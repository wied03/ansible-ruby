require 'ansible/ruby/dsl_builders/play'
require 'ansible/ruby/models/playbook'
require 'ansible/ruby/models/tasks'
require 'ansible/ruby/models/handlers'

module Ansible
  module Ruby
    module DslBuilders
      class FileLevel < Base
        def initialize
          @plays = []
          @tasks_builder = nil
          @context = nil
        end

        def play(name = nil, &block)
          if @context == :tasks
            raise 'This is a tasks file due to a task coming before this play, cannot use play here!'
          end
          @context = :playbook
          play_builder = Play.new name
          @plays << play_builder._evaluate(&block)
        end

        def task(name, &block)
          if @context == :playbook
            raise 'This is a playbook file due to a play coming before this task, cannot use task here!'
          end
          @context = :tasks
          @tasks_builder ||= Tasks.new(Models::Tasks)
          @tasks_builder.task name, &block
        end

        def handlers(&block)
          @context = :handlers
        end

        def _evaluate(*)
          super
          case @context
          when :playbook
            # TODO: Add a playbook DSL and do this like tasks
            Models::Playbook.new plays: @plays
          when :tasks
            @tasks_builder._evaluate {}
          when :handlers
            Models::Handlers.new handlers: []
          else
            raise "Unknown context #{@context}"
          end
        end

        def _process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

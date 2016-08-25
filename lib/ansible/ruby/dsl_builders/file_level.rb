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
          _validate_context :playbook
          @context = :playbook
          play_builder = Play.new name
          @plays << play_builder._evaluate(&block)
        end

        def task(name, &block)
          _validate_context :tasks
          @context = :tasks
          @tasks_builder ||= Tasks.new(Models::Tasks)
          @tasks_builder.task name, &block
        end

        def handler(name, &block)
          _validate_context :handlers
          @context = :handlers
          @tasks_builder ||= Tasks.new(Models::Handlers)
          @tasks_builder.task name, &block
        end

        def _evaluate(*)
          super
          case @context
          when :playbook
            # TODO: Add a playbook DSL and do this like tasks
            Models::Playbook.new plays: @plays
          when :tasks, :handlers
            @tasks_builder._evaluate {}
          else
            raise "Unknown context #{@context}"
          end
        end

        def _process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end

        private

        def _validate_context(expected)
          if @context && @context != expected
            raise "This is a #{expected} file, cannot use #{@context} here!"
          end
        end
      end
    end
  end
end

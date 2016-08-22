require 'ansible/ruby/dsl_builders/play'
require 'ansible/ruby/models/playbook'
require 'ansible/ruby/models/tasks'

module Ansible
  module Ruby
    module DslBuilders
      class FileLevel < Base
        def initialize
          @plays = []
        end

        def play(name = nil, &block)
          play_builder = Play.new name
          @plays << play_builder.evaluate(&block)
        end

        def tasks(&block)
          # TODO: Need to create a tasks builder (can probably refactor the play builder to extend from it)
        end

        def evaluate(*)
          super
          # TODO: Create a context so we know if we're in a playbook or a tasks file
          # TODO: Complain if we try and change contexts from an already established context (e.g. playbook->tasks)
          Models::Playbook.new plays: @plays
        end

        def process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

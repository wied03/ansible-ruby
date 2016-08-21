require 'ansible/ruby/playbook'
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Playbook < Base
        def initialize
          @tasks = []
          @playbook_args = {}
        end

        def task(name, &block)
          task_builder = Task.new name
          @tasks << task_builder.evaluate(&block)
        end

        def hosts(value)
          @playbook_args[:hosts] = value
        end

        def evaluate(*)
          super
          args = {
            tasks: @tasks,
            hosts: @playbook_args[:hosts]
          }
          Ansible::Ruby::Playbook.new args
        end

        def process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

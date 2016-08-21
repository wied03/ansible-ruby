require 'ansible/ruby/models/play'
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Play < Base
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

        def roles(value)
          @playbook_args[:roles] = value
        end

        def connection(value)
          @playbook_args[:connection] = value
        end

        def user(value)
          @playbook_args[:user] = value
        end

        def serial(value)
          @playbook_args[:serial] = value
        end

        def gather_facts(value)
          @playbook_args[:gather_facts] = value
        end

        def name(value)
          @playbook_args[:name] = value
        end

        def evaluate(*)
          super
          args = @playbook_args.merge({})
          # Don't want to trigger validation
          args[:tasks] = @tasks if @tasks.any?
          Models::Play.new args
        end

        def process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

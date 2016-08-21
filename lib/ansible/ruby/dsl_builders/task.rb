require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'
require 'ansible/ruby/dsl_builders/result'
require 'ansible/ruby/task'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Base
        def task(name, &block)
          @module = nil
          @temp_counter = 0
          @name = name
          @task_args = {}
          instance_eval &block
        end

        def evaluate(*args, &block)
          super
          args = {
            module: @module,
            name: @name,
          }.merge @task_args
          Ansible::Ruby::Task.new args
        end

        def become(value)
          @task_args[:become] = value
        end

        def become_user(value)
          @task_args[:become_user] = value
        end

        def changed_when(clause)
          @task_args[:changed_when] = clause
        end

        def failed_when(clause)
          @task_args[:failed_when] = clause
        end

        def ansible_when(clause)
          @task_args[:when] = clause
        end

        def with_dict(clause)
          @task_args[:with_dict] = clause
        end

        def async(value)
          @task_args[:async] = value
        end

        def poll(value)
          @task_args[:poll] = value
        end

        def ignore_errors(value)
          @task_args[:ignore_errors] = value
        end

        private

        def process_method(id, *args, &block)
          # only 1 module, so don't try and do this again
          raise "undefined local variable or method `#{id}'" if @module
          module_call_builder = ModuleCall.new
          module_call_builder.send(id, *args, &block)
          @module = module_call_builder.result
        end

        def method_missing_return(id, result, *args)
          # method_missing only used for modules here
          @temp_counter += 1
          Result.new(@temp_counter, lambda { |name| @task_args[:register] = name })
        end
      end
    end
  end
end

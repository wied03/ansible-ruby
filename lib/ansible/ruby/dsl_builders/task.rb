require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'
require 'ansible/ruby/dsl_builders/result'
require 'ansible/ruby/models/task'
require 'ansible/ruby/dsl_builders/unit'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Unit
        def initialize(name, context)
          super()
          @name = name
          @context = context
          @module = nil
        end

        def respond_to_missing?(*)
          !@module || super
        end

        # allow for other attributes besides the module in any order
        def _result
          args = {
            module: @module,
            name: @name
          }.merge @task_args
          task = @context.new args
          task.validate!
          task
        end

        private

        def _process_method(id, *args, &block)
          # only 1 module, so don't try and do this again
          raise "undefined local variable or method `#{id}'" if @module
          mcb = ModuleCall.new
          mcb.send(id, *args, &block)
          @module = mcb._result
        end

        def method_missing_return(_id, _result, *_args)
          # method_missing only used for modules here
          # Keep our register variables unique
          @temp_counter += 1
          Result.new(@temp_counter, ->(name) { @task_args[:register] = name })
        end
      end
    end
  end
end

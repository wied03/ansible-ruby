require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'
require 'ansible/ruby/dsl_builders/result'
require 'ansible/ruby/models/task'
require 'ansible/ruby/dsl_builders/unit'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Unit
        def initialize(name, context, temp_counter)
          super()
          @name = name
          @context = context
          @module = nil
          @inclusion = nil
          @temp_counter = temp_counter
        end

        def changed_when(clause)
          @task_args[:changed_when] = clause
        end

        def failed_when(clause)
          @task_args[:failed_when] = clause
        end

        def with_dict(clause)
          @task_args[:with_dict] = clause
          return unless block_given?
          hash_key = JinjaItemNode.new('item.key')
          hash_value = JinjaItemNode.new('item.value')
          yield [hash_key, hash_value]
        end

        def with_items(clause)
          @task_args[:with_items] = clause
          yield JinjaItemNode.new if block_given?
        end

        def async(value)
          @task_args[:async] = value
        end

        def poll(value)
          @task_args[:poll] = value
        end

        def notify(value)
          @task_args[:notify] = value
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
          args[:inclusion] = @inclusion if @inclusion
          task = @context.new args
          task.validate!
          task
        end

        private

        def _process_method(id, *args, &block)
          _check_context if id == :ansible_include
          mcb = ModuleCall.new
          if @module && mcb.respond_to?(id)
            # only 1 module allowed per task, give a good error message
            raise "Invalid module call `#{id}' since `#{@module.ansible_name}' module has already been used in this task. Only valid options are #{_valid_attributes}"
          elsif @module
            no_method_error id, "Only valid options are #{_valid_attributes}"
          end
          mcb.send(id, *args, &block)
          @module = mcb._result
        end

        def _check_context
          if @context == Models::Handler
            raise "Can't call inclusion inside a handler(yet), only in plays/handlers"
          else
            raise "Can't call inclusion inside a task, only in plays/handlers"
          end
        end

        def method_missing_return(_id, _result, *_args)
          # method_missing only used for modules here
          # Keep our register variables unique
          Result.new(@temp_counter, ->(name) { @task_args[:register] = name })
        end
      end
    end
  end
end

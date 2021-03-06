# frozen_string_literal: true

require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'
require 'ansible/ruby/dsl_builders/result'
require 'ansible/ruby/models/task'
require 'ansible/ruby/models/handler'
require 'ansible/ruby/dsl_builders/unit'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Unit
        @counter_variable = 0

        class << self
          attr_reader :counter_variable
          attr_writer :counter_variable
        end

        def initialize(name, model)
          super()
          @name = name
          @model = model
          @module = nil
          @inclusion = nil
          # Until the variable is utilized, we don't know if 'register' should be set, the supplied lambda
          name_fetcher = lambda do
            self.class.counter_variable += 1
            name = "result_#{self.class.counter_variable}"
            @task_args[:register] = name
            name
          end
          @register = Result.new name_fetcher
        end

        def no_log(value)
          @task_args[:no_log] = value
        end

        def connection(value)
          @task_args[:connection] = value
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

        def with_items(*clause)
          # 1 arg is probably a variable reference, so don't use an array
          @task_args[:with_items] = clause.length == 1 ? clause[0] : clause
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

        def local_action
          @task_args[:local_action] = true
          yield
        end

        def delegate_to(value)
          @task_args[:delegate_to] = value
        end

        def delegate_facts(value)
          @task_args[:delegate_facts] = value
        end

        def remote_user(value)
          @task_args[:remote_user] = value
        end

        def respond_to_missing?(*)
          !@module || super
        end

        def _register
          @register
        end

        # allow for other attributes besides the module in any order
        def _result
          args = {
            name: @name
          }.merge @task_args
          args[:module] = @module if @module
          args[:inclusion] = @inclusion if @inclusion
          args[:block] = @block if @block
          args[:rescue] = @rescue if @rescue
          args[:always] = @always if @always
          task = @model.new args
          # Quick feedback if the type is wrong, etc.
          task.validate! if validate?
          task
        end

        def validate?
          true
        end

        def ansible_block(&block)
          block_builder = Block.new
          block_builder.instance_eval(&block)
          @block = block_builder._result
          nil
        end

        def ansible_rescue(&block)
          block_builder = Block.new
          block_builder.instance_eval(&block)
          @rescue = block_builder._result
          nil
        end

        def ansible_always(&block)
          block_builder = Block.new
          block_builder.instance_eval(&block)
          @always = block_builder._result
          nil
        end

        private

        def _process_method(id, *args, &block)
          if id == :ansible_include
            @inclusion = _ansible_include(*args, &block)
            return
          end
          if id == :listen && @model == Models::Handler
            @task_args[:listen] = args[0]
            return
          end
          mcb = ModuleCall.new
          # only 1 module allowed per task, give a good error message
          raise "Invalid module call `#{id}' since `#{@module.ansible_name}' module has already been used in this task. Only valid options are #{_valid_attributes}" if @module && mcb.respond_to?(id)

          no_method_error id, "Only valid options are #{_valid_attributes}" if @module
          mcb.send(id, *args, &block)
          @module = mcb._result
        end

        def method_missing_return(_id, _result, *_args)
          # Allow module call to return the register vsriable
          @register
        end
      end
    end
  end
end

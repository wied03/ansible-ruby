# frozen_string_literal: true

# see LICENSE.txt in project root
require 'ansible/ruby/models/block'

module Ansible
  module Ruby
    module DslBuilders
      class Block < Unit
        def initialize
          super
          @task_builders = []
          temp_counter = 0
          @temp_counter_incrementer = lambda do
            temp_counter += 1
          end
        end

        def task(name, &block)
          task_builder = Task.new name, Models::Task, @temp_counter_incrementer
          task_builder.instance_eval(&block)
          @task_builders << task_builder
          task_builder._register
        end

        # allow for other attributes besides the module in any order
        def _result
          tasks = @task_builders.map(&:_result)
          args = {
            tasks: tasks
          }.merge @task_args
          block = Models::Block.new args
          block.validate!
          block
        end

        private

        def _process_method(id, *)
          no_method_error id, "Only valid options are #{_valid_attributes}"
        end
      end
    end
  end
end

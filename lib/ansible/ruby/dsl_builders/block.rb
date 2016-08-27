# see LICENSE.txt in project root
require 'ansible/ruby/models/block'

module Ansible
  module Ruby
    module DslBuilders
      class Block < Unit
        def initialize
          super
          @tasks = []
        end

        def task(name, &block)
          task_builder = Task.new name, Models::Task
          task_builder.instance_eval(&block)
          @tasks << task_builder._result
        end

        # allow for other attributes besides the module in any order
        def _result
          args = {
            tasks: @tasks
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

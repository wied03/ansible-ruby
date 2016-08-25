# See LICENSE.txt for license
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Tasks < Base
        def initialize(context)
          @context = context
          @items = []
        end

        def task(name, &block)
          # TODO: Handlers have the same DSL as Task as well, so pass on our context to that
          task_builder = Task.new name
          @items << task_builder._evaluate(&block)
        end

        def _evaluate(*)
          super
          # TODO: use context here
          Models::Tasks.new tasks: @items
        end

        def _process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

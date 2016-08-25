# See LICENSE.txt for license
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Tasks < Base
        def initialize(unit)
          @unit = unit
          @tasks = []
        end

        def task(name, &block)
          task_builder = Task.new name
          @tasks << task_builder._evaluate(&block)
        end

        def _evaluate(*)
          super
          Models::Tasks.new tasks: @tasks
        end

        def _process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

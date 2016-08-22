# See LICENSE.txt for license
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Tasks < Base
        def initialize
          @tasks = []
        end

        def task(name, &block)
          task_builder = Task.new name
          @tasks << task_builder.evaluate(&block)
        end

        def evaluate(*)
          super
          Models::Tasks.new tasks: @tasks
        end

        def process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end

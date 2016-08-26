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
          task_builder.instance_eval(&block)
          @items << task_builder._result
        end

        # allow multiple tasks, etc.
        def _result
          # TODO: use context here
          Models::Tasks.new tasks: @items
        end

        def _process_method(id, *)
          only_valid_clause = case @context.name
                              when Models::Tasks.name
                                "Only `task' is valid"
                              when Models::Handlers.name
                                "Only `handler' is valid"
                              else
                                raise "Unknown context #{@context}"
                              end
          no_method_error id, only_valid_clause
        end
      end
    end
  end
end

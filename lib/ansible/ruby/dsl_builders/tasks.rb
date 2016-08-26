# See LICENSE.txt for license
require 'ansible/ruby/dsl_builders/task'

module Ansible
  module Ruby
    module DslBuilders
      class Tasks < Base
        @valid_methods = {
          Models::Tasks => [:task],
          Models::Handlers => [:handler]
        }

        def initialize(context)
          @context = context
          @items = []
        end

        # allow multiple tasks, etc.
        def _result
          # TODO: use context here
          Models::Tasks.new tasks: @items
        end

        class << self
          def valid_methods(context)
            @valid_methods[context]
          end
        end

        private

        def _valid_methods
          valid = self.class.valid_methods @context
          raise "Unknown context #{@context}" unless valid
          valid
        end

        def _process_method(id, *args, &block)
          valid = _valid_methods
          no_method_error id, "Only #{valid} is valid" unless valid.include? id
          _handle args[0], &block
        end

        def _handle(name, &block)
          # TODO: Handlers have the same DSL as Task as well, so pass on our context to that
          task_builder = Task.new name
          task_builder.instance_eval(&block)
          @items << task_builder._result
        end
      end
    end
  end
end

require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Base
        def task(name, &block)
          @name = name
          instance_eval &block
        end

        def evaluate(*args, &block)
          super
          args = {
            module: @module,
            name: @name
          }
          args[:become] = @become
          args[:become_user] = @become_user
          Ansible::Ruby::Task.new args
        end

        def become(value)
          @become = value
        end

        def become_user(value)
          @become_user = value
        end

        private

        def process_method(id, *args, &block)
          module_call_builder = ModuleCall.new
          module_call_builder.send(id, *args, &block)
          @module = module_call_builder.result
        end
      end
    end
  end
end

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
            name: @name,
          }
          set_ivar args, :become
          set_ivar args, :become_user
          Ansible::Ruby::Task.new args
        end

        def become(value)
          @become = value
        end

        def become_user(value)
          @become_user = value
        end

        private

        def set_ivar(args, key)
          ivar = "@#{key.to_s}".to_sym
          # Don't want to set arguments on the class that the user hasn't set
          args[key] = instance_variable_get ivar if instance_variable_defined? ivar
        end

        def process_method(id, *args, &block)
          module_call_builder = ModuleCall.new
          module_call_builder.send(id, *args, &block)
          @module = module_call_builder.result
        end
      end
    end
  end
end

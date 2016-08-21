require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/module_call'

module Ansible
  module Ruby
    module DslBuilders
      class Task < Base
        def task(name, &block)
          @name = name
          module_call_builder = ModuleCall.new
          @module = module_call_builder.evaluate &block
        end

        def evaluate(*args, &block)
          super
          Ansible::Ruby::Task.new module: @module, name: @name
        end

        private

        def process_method(id, *)
          raise "Unexpected call #{id} in task #{@name}"
        end
      end
    end
  end
end

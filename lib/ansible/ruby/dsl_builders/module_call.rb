require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module DslBuilders
      class ModuleCall < Base
        MODULES_MOD = Ansible::Ruby::Modules

        def respond_to_missing?(method_name, _)
          klass_name = klass_name method_name
          MODULES_MOD.const_defined?(klass_name) || super
        end

        private

        def klass_name(id)
          id.to_s.capitalize
        end

        def process_method(id, *, &block)
          raise "Unknown module #{id}" unless respond_to_missing? id, true
          module_klass = MODULES_MOD.const_get klass_name(id)
          # Delegate everything to the args builder and apply it to the module class we located
          module_builder = Args.new
          args = module_builder.evaluate(&block)
          @result = module_klass.new(args)
        end
      end
    end
  end
end

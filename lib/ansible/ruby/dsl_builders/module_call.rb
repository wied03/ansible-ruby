require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'
require 'ansible/ruby/modules/base'
require 'ansible/ruby/modules/custom/free_form'

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

        def process_method(id, *module_args, &block)
          raise "Unknown module #{id}" unless respond_to_missing? id, true
          module_klass = MODULES_MOD.const_get klass_name(id)
          free_form_module = module_klass.include?(Ansible::Ruby::Modules::FreeForm)
          free_form_arg = if module_args.any?
                            raise "Can't use arguments #{module_args} on this type of module" unless free_form_module
                            raise 'Expected only 1 argument for this type of module' if module_args.length > 1
                            module_args[0]
                          else
                            raise 'Expected 1 argument for this type of module' if free_form_module
                          end
          # Delegate everything to the args builder and apply it to the module class we located
          module_builder = Args.new
          args = module_builder.evaluate(&block)
          args[:free_form] = free_form_arg if free_form_arg
          @result = module_klass.new(args)
          @result.validate!
        end
      end
    end
  end
end

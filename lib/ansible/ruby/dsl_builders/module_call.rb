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
          _klass_name = _klass_name method_name
          MODULES_MOD.const_defined?(_klass_name) || super
        end

        private

        def _klass_name(id)
          id.to_s.capitalize
        end

        def _process_method(id, *module_args, &block)
          raise "Unknown module #{id}" unless respond_to_missing? id, true
          module_klass = MODULES_MOD.const_get _klass_name(id)
          free_form_module = module_klass.include?(Ansible::Ruby::Modules::FreeForm)
          if module_args.any? && !free_form_module
            raise "Can't use arguments #{module_args} on this type of module"
          end
          free_form = _free_form_arg(module_args) if free_form_module
          # Delegate everything to the args builder and apply it to the module class we located
          module_builder = Args.new
          args = module_builder._evaluate(&block)
          args[:free_form] = free_form if free_form
          @result = module_klass.new(args)
          @result.validate!
        end

        def _free_form_arg(module_args)
          if module_args.any?
            raise 'Expected only 1 argument for this type of module' if module_args.length > 1
            module_args[0]
          else
            raise 'Expected 1 argument for this type of module'
          end
        end
      end
    end
  end
end

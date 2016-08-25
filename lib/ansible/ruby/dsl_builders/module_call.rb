require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'
require 'ansible/ruby/modules/base'
require 'ansible/ruby/modules/custom/free_form'
require 'ansible/ruby/dsl_builders/jinja_item'

module Ansible
  module Ruby
    module DslBuilders
      class ModuleCall < Base
        include JinjaItem
        MODULES_MOD = Ansible::Ruby::Modules

        def respond_to_missing?(method_name, _)
          klass_name = _klass_name method_name
          MODULES_MOD.const_defined?(klass_name) || super
        end

        private

        def _klass_name(id)
          id.to_s.capitalize
        end

        def _process_method(id, *module_args, &block)
          module_klass = _module_klass(id)
          args = _arguments(block, module_args, module_klass)
          @result = module_klass.new(args)
          @result.validate!
        end

        def _arguments(block, module_args, module_klass)
          free_form_module = module_klass.include?(Ansible::Ruby::Modules::FreeForm)
          if module_args.any? && !free_form_module
            raise "Can't use arguments #{module_args} on this type of module"
          end
          if !free_form_module && !block
            raise 'You must supply a block when using this type of module'
          end
          args = {}
          free_form = free_form_module && _free_form_arg(module_args)
          args.merge! _block_args(&block)
          args[:free_form] = free_form if free_form
          _jinja_nodes(args)
        end

        def _jinja_nodes(args)
          Hash[args.map do |key, value|
            stringified = value.is_a?(DslBuilders::JinjaItemNode) ? value.to_s : value
            [key, stringified]
          end]
        end

        def _module_klass(id)
          raise "Unknown module #{id}" unless respond_to_missing? id, true
          MODULES_MOD.const_get _klass_name(id)
        end

        def _block_args(&block)
          return {} unless block
          # Delegate everything to the args builder and apply it to the module class we located
          module_builder = Args.new
          result = module_builder._evaluate(&block)
          @jinja_item_mode = module_builder._jinja_item_mode
          result
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

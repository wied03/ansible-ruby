require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'
require 'ansible/ruby/modules/base'
require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/dsl_builders/jinja_item_node'

module Ansible
  module Ruby
    module DslBuilders
      class ModuleCall < Base
        MODULES_MOD = Ansible::Ruby::Modules

        def respond_to_missing?(method_name, _)
          klass_name = _klass_name method_name
          MODULES_MOD.const_defined?(klass_name)
        end

        private

        def _klass_name(id)
          id.to_s.capitalize
        end

        def _process_method(id, *module_args, &block)
          module_klass = _module_klass(id)
          @result = module_klass.new({})
          _arguments(block, module_args)
          @result.validate!
        end

        def _arguments(block, module_args)
          free_form_module = @result.class.include?(Ansible::Ruby::Modules::FreeForm)
          if module_args.any? && !free_form_module
            raise "Can't use arguments #{module_args} on this type of module"
          end
          if !free_form_module && !block
            raise 'You must supply a block when using this type of module'
          end
          free_form = free_form_module && _free_form_arg(module_args)
          args_builder = Args.new @result do |attribute|
            # More user friendly to get rid of = mutators
            valid = _valid_module_attrib
            raise "Unknown attribute '#{attribute}' for #{@result.class.name}.\n\nValid attributes are: #{valid}\n"
          end
          _block_args(args_builder, &block)
          args_builder.free_form free_form if free_form
        end

        def _valid_module_attrib
          (@result.methods - Modules::Base.instance_methods).reject do |method|
            method.to_s.end_with?('=') || method == :free_form
          end
        end

        def _module_klass(id)
          raise "Unknown module #{id}" unless respond_to_missing? id, true
          MODULES_MOD.const_get _klass_name(id)
        end

        def _block_args(args_builder, &block)
          return {} unless block
          # Delegate everything to the args builder and apply it to the module class we located
          args_builder.instance_eval(&block)
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

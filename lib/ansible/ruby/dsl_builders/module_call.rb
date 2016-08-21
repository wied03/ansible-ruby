require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'

module Ansible
  module Ruby
    module DslBuilders
      class ModuleCall < Base
        private

        def process_method(id, *, &block)
          klass_name = id.to_s.capitalize
          modules = Ansible::Ruby::Modules
          raise "Unknown module #{id}" unless modules.const_defined? klass_name
          module_klass = modules.const_get klass_name
          module_builder = Args.new
          args = module_builder.evaluate &block
          @result = module_klass.new(args)
        end
      end
    end
  end
end

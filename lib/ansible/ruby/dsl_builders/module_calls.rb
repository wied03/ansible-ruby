require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/args'

module Ansible
  module Ruby
    module DslBuilders
      class ModuleCalls < Base
        def initialize(code)
          @code = code
          @module_calls = []
        end

        def evaluate
          instance_eval @code
          @module_calls
        end

        private

        def process_method(id, *args, &block)
          klass_name = id.to_s.capitalize
          modules = Ansible::Ruby::Modules
          raise "Unknown module #{id}" unless modules.const_defined? klass_name
          module_klass = modules.const_get klass_name
          module_builder = Args.new &block
          args = module_builder.evaluate
          @module_calls << module_klass.new(args)
        end
      end
    end
  end
end

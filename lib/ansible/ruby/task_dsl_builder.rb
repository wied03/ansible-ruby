require 'ansible/ruby/base_dsl_builder'
require 'ansible/ruby/module_call_dsl_builder'

module Ansible
  module Ruby
    class TaskDslBuilder < BaseDslBuilder
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
        module_builder = ModuleCallDslBuilder.new &block
        args = module_builder.evaluate
        @module_calls << module_klass.new(args)
      end
    end
  end
end

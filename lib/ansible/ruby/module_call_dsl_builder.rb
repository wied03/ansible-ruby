require 'ansible/ruby/base_dsl_builder'

module Ansible
  module Ruby
    class ModuleCallDslBuilder < BaseDslBuilder
      def initialize(&block)
        @args = {}
        @args_block = block
      end

      def evaluate
        instance_eval &@args_block
        @args
      end

      def process_method(id, *args, &block)
        @args[id] = args
      end
    end
  end
end

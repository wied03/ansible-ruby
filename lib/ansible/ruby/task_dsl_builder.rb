require 'ansible/ruby/base_dsl_builder'

module Ansible
  module Ruby
    class TaskDslBuilder < BaseDslBuilder
      def initialize(code)
        @context = [:task]
        @code = code
        @args = {}
        @module_calls = []
      end

      def evaluate
        instance_eval @code
        @module_calls
      end

      private

      def process_method(id, *args, &block)
        do_eval = lambda { instance_eval &block if block }
        case @context.last
        when :task
          process_module id
          do_eval.call
          module_finished
        when :module
          process_args id, args
        else
          raise "Unknown context #{@context}"
        end
      end

      def module_finished
        @module_calls << @module_klass.new(@args)
        @context.pop
        @args = {}
      end

      def process_args(id, args)
        @args[id] = args
      end

      def process_module(id)
        klass_name = id.to_s.capitalize
        modules = Ansible::Ruby::Modules
        raise "Unknown module #{id}" unless modules.const_defined? klass_name
        @module_klass = modules.const_get klass_name
        @context << :module
      end
    end
  end
end

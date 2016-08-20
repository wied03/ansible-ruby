module Ansible
  module Ruby
    class DslBuilder
      def initialize(code:, context: :task)
        @context = context
        @code = code
      end

      def method_missing(id, *args)
        begin
          process_module id, *args
        rescue Exception => our_error
          begin
            super
          rescue NoMethodError => ruby_error
            matching_line = ruby_error.backtrace
                              .map { |str| str.split ':' }
                              .find { |arr| arr[0] == '(eval)' }[1]
            raise "#{our_error.message} at line #{matching_line}!"
          end
        end
      end

      def evaluate
        instance_eval @code
        @module_klass.new src: 'a', dest: 'b'
      end

      private

      def process_module(id, *args)
        klass_name = id.to_s.capitalize
        modules = Ansible::Ruby::Modules
        raise "Unknown module #{id}" unless modules.const_defined? klass_name
        @module_klass = modules.const_get klass_name
      end
    end
  end
end

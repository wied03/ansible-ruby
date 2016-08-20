module Ansible
  module Ruby
    class DslBuilder
      def initialize(code:, context: :module)
        @context = context
        @code = code
      end

      def method_missing(id, *args)
        klass_name = id.to_s.capitalize
        modules = Ansible::Ruby::Modules
        unless modules.const_defined? klass_name
          message = nil
          begin
            super
          rescue Exception => e
            matching_line = e.backtrace
                              .map { |str| str.split ':' }
                              .find { |arr| arr[0] == '(eval)' }[1]
            message = "Unknown module #{id} at line #{matching_line}!"
          end
          raise message
        end
        @module_klass = modules.const_get klass_name
      end

      def evaluate
        instance_eval @code
        @module_klass.new src: 'a', dest: 'b'
      end
    end
  end
end

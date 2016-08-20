module Ansible
  module Ruby
    class DslBuilder
      def initialize(code:, context: :module)
        @context = context
        instance_eval code
      end

      def method_missing(id, *args)
        klass_name = id.to_s.capitalize
        @module_klass = Ansible::Ruby::Modules.const_get klass_name
      end

      def evaluate
        @module_klass.new src: 'a', dest: 'b'
      end
    end
  end
end

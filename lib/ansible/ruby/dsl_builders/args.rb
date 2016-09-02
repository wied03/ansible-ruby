require 'ansible/ruby/dsl_builders/base'

module Ansible
  module Ruby
    module DslBuilders
      class Args < Base
        KERNEL_METHOD_OVERRIDES = [:system, :test, :warn, :sleep]

        def initialize(recipient, &block)
          super()
          @error_handler = block
          @recipient = recipient
        end

        def _process_method(id, *args)
          setter = "#{id}=".to_sym
          @error_handler[id] if @error_handler && !@recipient.respond_to?(setter)
          value = args.length == 1 ? args[0] : args
          value = _convert_ast_node value
          @recipient.send(setter, value)
        end

        KERNEL_METHOD_OVERRIDES.each do |method|
          define_method(method) do |*args|
            _process_method method, *args
          end
        end

        private

        def _convert_ast_node(value)
          case value
          when DslBuilders::JinjaItemNode
            value.to_s
          when Hash
            Hash[
              value.map { |key, hash_val| [key, _convert_ast_node(hash_val)] }
            ]
          when Array
            value.map { |val| _convert_ast_node(val) }
          else
            value
          end
        end
      end
    end
  end
end

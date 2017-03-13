# frozen_string_literal: true
module Ansible
  module Ruby
    module DslBuilders
      class Base
        def initialize
          @result = nil
        end

        def _result
          @result
        end

        def respond_to_missing?(*)
          super
        end

        def jinja(text)
          "{{ #{text} }}"
        end

        # For the DSL, don't want to defer to regular method_missing
        # rubocop:disable Style/MethodMissing
        def method_missing(id, *args, &block)
          result = _process_method id, *args, &block
          method_missing_return id, result, *args
        end
        # rubocop:enable Style/MethodMissing

        private

        def _ansible_include(filename, &block)
          inclusion = Models::Inclusion.new(file: filename)
          if block
            args_builder = Args.new inclusion
            args_builder.instance_eval(&block)
          end
          inclusion
        end

        def _valid_attributes
          (self.class.instance_methods - Object.instance_methods - [:_result, :method_missing, :validate?]).sort
        end

        def no_method_error(method, only_valid_clause)
          raise "Invalid method/local variable `#{method}'. #{only_valid_clause}"
        end

        def method_missing_return(*)
          # Don't leak return values
          nil
        end

        def _implicit_bool(args)
          args.empty? || args[0]
        end
      end
    end
  end
end

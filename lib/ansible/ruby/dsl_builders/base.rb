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

        def method_missing(id, *args, &block)
          result = begin
            _process_method id, *args, &block
          rescue StandardError => our_error
            begin
              super
            rescue NameError => ruby_error
              matching_line = ruby_error.backtrace
                                        .map { |str| str.split ':' }
                                        .find { |arr| arr[0] == '(eval)' }[1]
              raise "#{our_error.message} at line #{matching_line}!"
            end
          end
          method_missing_return id, result, *args
        end

        private

        def _ansible_include(filename, &block)
          args = if block
                   args_builder = Args.new
                   args_builder.instance_eval(&block)
                   args_builder._result
                 else
                   {}
                 end
          Models::Inclusion.new(args.merge(file: filename))
        end

        def _valid_attributes
          (self.class.instance_methods - Object.instance_methods - [:_result, :method_missing])
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

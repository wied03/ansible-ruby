module Ansible
  module Ruby
    module DslBuilders
      class Base
        def initialize
          @result = nil
        end

        attr_reader :result

        def _evaluate(*args, &block)
          if block
            instance_eval(&block)
          else
            raise 'Expected code as an argument if no block supplied!' unless args.length == 1
            instance_eval args[0]
          end
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
            rescue NoMethodError => ruby_error
              matching_line = ruby_error.backtrace
                                        .map { |str| str.split ':' }
                                        .find { |arr| arr[0] == '(eval)' }[1]
              raise "#{our_error.message} at line #{matching_line}!"
            end
          end
          method_missing_return id, result, *args
        end

        private

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

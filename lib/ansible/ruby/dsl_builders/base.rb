module Ansible
  module Ruby
    module DslBuilders
      class Base
        def initialize
          @result = nil
        end

        def evaluate(*args, &block)
          if block
            instance_eval &block
          else
            raise 'Expected code as an argument if no block supplied!' unless args.length == 1
            instance_eval args[0]
          end
          @result
        end

        def method_missing(id, *args, &block)
          begin
            process_method id, *args, &block
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
          # Don't leak return values
          nil
        end
      end
    end
  end
end
module Ansible
  module Ruby
    module DslBuilders
      class Result
        def initialize(counter, register_set)
          @name = "result_#{counter}"
          # Until the variable is utilized, we don't know if 'register' should be set, the supplied lambda
          # allows us to set register on the task
          @register_set = register_set
        end

        def stdout
          register_needed
          "#{@name}.stdout"
        end

        private

        def register_needed
          @register_set[@name]
        end
      end
    end
  end
end

module Ansible
  module Ruby
    module DslBuilders
      class Result
        def initialize(counter, register_set)
          @name = "result_#{counter}"
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

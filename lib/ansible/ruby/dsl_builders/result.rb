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

        # we need to respond to everything, don't want super
        # rubocop:disable Style/MethodMissing
        def method_missing(id, *args)
          register_needed
          flat_args = args.map(&:inspect).map(&:to_s).join ', '
          "#{@name}.#{id}#{flat_args.empty? ? '' : "(#{flat_args})"}"
        end
        # rubocop:enable Style/MethodMissing

        def respond_to_missing?(*)
          true
        end

        private

        def register_needed
          @register_set[@name]
        end
      end
    end
  end
end

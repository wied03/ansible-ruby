module Ansible
  module Ruby
    module DslBuilders
      class Result
        def initialize(name_fetcher)
          @name_fetcher = name_fetcher
        end

        # we need to respond to everything, don't want super
        # rubocop:disable Style/MethodMissing
        def method_missing(id, *args)
          flat_args = args.map(&:inspect).map(&:to_s).join ', '
          "#{name}.#{id}#{flat_args.empty? ? '' : "(#{flat_args})"}"
        end
        # rubocop:enable Style/MethodMissing

        def respond_to_missing?(*)
          true
        end

        private

        def name
          # Don't want to assign a name until we actually use a variable
          @name ||= @name_fetcher.call
        end
      end
    end
  end
end

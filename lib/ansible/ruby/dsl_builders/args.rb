require 'ansible/ruby/dsl_builders/base'

module Ansible
  module Ruby
    module DslBuilders
      class Args < Base
        def initialize
          super
          @result = {}
        end

        def process_method(id, *args)
          value = args.length == 1 ? args[0] : args
          @result[id] = value
        end
      end
    end
  end
end

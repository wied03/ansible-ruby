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
          @result[id] = args
        end
      end
    end
  end
end

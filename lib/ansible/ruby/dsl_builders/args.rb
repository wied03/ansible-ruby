require 'ansible/ruby/dsl_builders/base'
require 'ansible/ruby/dsl_builders/jinja_item'

module Ansible
  module Ruby
    module DslBuilders
      class Args < Base
        include JinjaItem

        def initialize
          super
          @result = {}
        end

        def _process_method(id, *args)
          value = args.length == 1 ? args[0] : args
          @result[id] = value
        end
      end
    end
  end
end

require 'ansible/ruby/dsl_builders/base'

module Ansible
  module Ruby
    module DslBuilders
      class Args < Base
        def initialize(&block)
          @args = {}
          @args_block = block
        end

        def evaluate
          instance_eval &@args_block
          @args
        end

        def process_method(id, *args)
          @args[id] = args
        end
      end
    end
  end
end

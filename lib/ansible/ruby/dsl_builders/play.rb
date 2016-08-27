require 'ansible/ruby/models/play'
require 'ansible/ruby/dsl_builders/tasks'
require 'ansible/ruby/dsl_builders/block'

module Ansible
  module Ruby
    module DslBuilders
      class Play < Tasks
        def initialize(name = nil)
          super :tasks
          @play_args = {}
          @play_args[:name] = name if name
        end

        def hosts(value)
          @play_args[:hosts] = value
        end

        def roles(value)
          @play_args[:roles] = value
        end

        def connection(value)
          @play_args[:connection] = value
        end

        def user(value)
          @play_args[:user] = value
        end

        def serial(value)
          @play_args[:serial] = value
        end

        def gather_facts(value)
          @play_args[:gather_facts] = value
        end

        def local_host
          hosts 'localhost'
          connection :local
        end

        def block(&block)
          builder = Block.new
          builder.instance_eval(&block)
          @items << builder._result
        end

        # allow any order
        def _result
          tasks = super
          args = @play_args.merge({})
          # Don't want to trigger validation
          args[:tasks] = tasks if tasks.items.any?
          Models::Play.new args
        end

        private

        def _process_method(id, *args, &block)
          return super if respond_to_missing?(id, *args, &block)
          valid = _valid_attributes << :task
          no_method_error id, "Only valid options are #{valid}"
        end
      end
    end
  end
end

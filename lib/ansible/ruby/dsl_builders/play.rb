require 'ansible/ruby/models/play'
require 'ansible/ruby/dsl_builders/tasks'
require 'ansible/ruby/dsl_builders/block'

module Ansible
  module Ruby
    module DslBuilders
      class Play < Tasks
        def initialize(name = nil)
          super :tasks
          @playbook_args = {}
          @playbook_args[:name] = name
        end

        def hosts(value)
          @playbook_args[:hosts] = value
        end

        def roles(value)
          @playbook_args[:roles] = value
        end

        def connection(value)
          @playbook_args[:connection] = value
        end

        def user(value)
          @playbook_args[:user] = value
        end

        def serial(value)
          @playbook_args[:serial] = value
        end

        def gather_facts(value)
          @playbook_args[:gather_facts] = value
        end

        def local_host
          hosts 'localhost'
          connection :local
        end

        def block(&block)

        end

        # allow any order
        def _result
          tasks = super
          args = @playbook_args.merge({})
          # Don't want to trigger validation
          args[:tasks] = tasks if tasks.items.any?
          Models::Play.new args
        end

        private

        def _process_method(id, *args, &block)
          return super if respond_to_missing?(id, *args, &block)
          valid = (self.class.instance_methods - Object.instance_methods - [:_result, :method_missing]) << :task
          no_method_error id, "Only valid options are #{valid}"
        end
      end
    end
  end
end

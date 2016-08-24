require 'ansible/ruby/models/play'
require 'ansible/ruby/dsl_builders/tasks'

module Ansible
  module Ruby
    module DslBuilders
      class Play < Tasks
        def initialize(name = nil)
          super()
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

        def evaluate(*)
          tasks = super
          args = @playbook_args.merge({})
          # Don't want to trigger validation
          args[:tasks] = tasks if tasks.tasks.any?
          Models::Play.new args
        end
      end
    end
  end
end

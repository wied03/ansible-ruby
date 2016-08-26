require 'ansible/ruby/models/play'
require 'ansible/ruby/dsl_builders/tasks'

module Ansible
  module Ruby
    module DslBuilders
      class Play < Tasks
        def initialize(name = nil)
          super(Models::Tasks)
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

        # allow any order
        def _result
          tasks = super
          args = @playbook_args.merge({})
          # Don't want to trigger validation
          args[:tasks] = tasks if tasks.tasks.any?
          Models::Play.new args
        end

        private

        def _process_method(id, *)
          valid = self.class.instance_methods - Object.instance_methods - [:_result, :method_missing]
          no_method_error id, "Only valid options are #{valid}"
        end
      end
    end
  end
end

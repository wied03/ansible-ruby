# frozen_string_literal: true

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

        def vars(value)
          @play_args[:vars] = value
        end

        def no_log(value)
          @play_args[:no_log] = value
        end

        def roles(value)
          @play_args[:roles] = value
        end

        def tags(value)
          @play_args[:tags] = value
        end

        def role(name,
                 tag = nil)
          roles = @play_args[:roles] ||= []
          roles << name unless tag
          # TODO: Roles should probably be a 'first class' model used within the play model
          roles << { role: name, tags: [*tag] } if tag
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

        def become(*args)
          value = _implicit_bool args
          @play_args[:become] = value
        end

        def become_user(value)
          @play_args[:become_user] = value
        end

        def ignore_errors(*args)
          value = _implicit_bool args
          @play_args[:ignore_errors] = value
        end

        def local_host
          hosts 'localhost'
          connection :local
        end

        def block(&block)
          builder = Block.new
          builder.instance_eval(&block)
          @task_builders << builder
        end

        # allow any order
        def _result
          tasks = super
          raise 'Includes cannot be used in a play using a role. They can only be used in task files or in plays with a task list.' if tasks.inclusions.any? && @play_args[:roles]

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

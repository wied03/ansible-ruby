# frozen_string_literal: true
# See LICENSE.txt for license
require 'ansible/ruby/dsl_builders/task'
require 'ansible/ruby/models/handler'
require 'ansible/ruby/models/inclusion'

module Ansible
  module Ruby
    module DslBuilders
      class Tasks < Base
        def initialize(context)
          @context = context
          @task_builders = []
          @includes = []
          temp_counter = 0
          @temp_counter_incrementer = lambda do
            temp_counter += 1
          end
        end

        def ansible_include(filename, &block)
          @includes << _ansible_include(filename, &block)
        end

        # allow multiple tasks, etc.
        def _result
          tasks = @task_builders.map(&:_result)
          Models::Tasks.new items: tasks,
                            inclusions: @includes
        end

        class << self
          def context(context)
            contexts[context]
          end

          def contexts
            {
              tasks: {
                valid_methods: [:task],
                model: Models::Task
              },
              handlers: {
                valid_methods: [:handler],
                model: Models::Handler
              }
            }
          end
        end

        def respond_to_missing?(id, *)
          _valid_methods.include? id
        end

        private

        def _context
          self.class.context @context
        end

        def _valid_methods
          raise "Unknown context #{@context}" unless _context
          valid = _context[:valid_methods]
          raise "Valid methods not configured for #{@context}!" unless valid
          valid
        end

        def _process_method(id, *args, &block)
          valid = _valid_methods
          no_method_error id, "Only #{valid} is valid" unless valid.include? id
          _handle args[0], &block
        end

        def _handle(name, &block)
          model = _context[:model]
          raise "Model not configured for #{@context}" unless model
          task_builder = Task.new name, model, @temp_counter_incrementer
          task_builder.instance_eval(&block)
          @last_variable = task_builder._register
          @task_builders << task_builder
        end

        def method_missing_return(*)
          @last_variable
        end
      end
    end
  end
end

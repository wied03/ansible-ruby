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
          @tasks = []
          @includes = []
          @temp_counter = 0
        end

        def ansible_include(filename, &block)
          @includes << _ansible_include(filename, &block)
        end

        # allow multiple tasks, etc.
        def _result
          Models::Tasks.new items: @tasks,
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
          @temp_counter += 1
          task_builder = Task.new name, model, @temp_counter
          task_builder.instance_eval(&block)
          @tasks << task_builder._result
        end
      end
    end
  end
end

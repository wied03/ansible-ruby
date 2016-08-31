require 'ansible/ruby/dsl_builders/play'
require 'ansible/ruby/models/playbook'
require 'ansible/ruby/models/tasks'

module Ansible
  module Ruby
    module DslBuilders
      class FileLevel < Base
        def initialize
          @plays = []
          @tasks_builder = nil
          @context = nil
        end

        def play(name = nil, &block)
          _validate_context :playbook
          @context = :playbook
          play_builder = Play.new name
          play_builder.instance_eval(&block)
          @plays << play_builder._result
        end

        def task(name, &block)
          _validate_context :tasks
          @context = :tasks
          @tasks_builder ||= Tasks.new(:tasks)
          @tasks_builder.task name, &block
        end

        def handler(name, &block)
          _validate_context :handlers
          @context = :handlers
          @tasks_builder ||= Tasks.new(:handlers)
          @tasks_builder.handler name, &block
        end

        def _handled_eval(ruby_filename)
          ruby_code = File.read ruby_filename
          instance_eval ruby_code, ruby_filename
          # error code
          nil
        rescue StandardError => error
          only_user_code = error.backtrace_locations
                                .select { |trace| trace.absolute_path == ruby_filename }
                                .map { |trace| format_trace_line(trace) }
          message = "#{error.message}\n****Error Location:****\n#{only_user_code.join("\n")}"
          Exception.new message
        end

        def format_trace_line(trace)
          "#{trace.path}:#{trace.lineno}"
        end

        # any order/lazy result
        # :reek:NilCheck - when nil is the simplest way to check this
        def _result
          case @context
          when :playbook
            # TODO: Add a playbook DSL and do this like tasks
            Models::Playbook.new plays: @plays
          when :tasks, :handlers
            @tasks_builder._result
          when nil
            raise 'Must supply at least 1 handler/task/play!'
          else
            raise "Unknown context #{@context}"
          end
        end

        def _process_method(id, *)
          no_method_error id, 'Only valid options are [:task, :handler, :play]'
        end

        private

        def _validate_context(expected)
          if @context && @context != expected
            raise "This is a #{@context} file, cannot use #{expected} here!"
          end
        end
      end
    end
  end
end

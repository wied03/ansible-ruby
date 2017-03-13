# frozen_string_literal: true
# See LICENSE.txt in root of repository
require 'rake/tasklib'
require 'ansible-ruby'
require 'ansible/ruby/rake/task_util'

module Ansible
  module Ruby
    module Rake
      class Compile < ::Rake::TaskLib
        include TaskUtil

        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :files

        def initialize(parameters = :default)
          self.class.load_rule
          name, deps = parse_params parameters
          yield self if block_given?
          raise 'You did not supply any files!' unless files && [*files].any?
          deps ||= []
          yml_filenames = yaml_filenames([*files])
          deps = [*deps] + yml_filenames
          task name => deps
        end

        class << self
          def load_rule
            return if @rule_done
            ::Rake.application.create_rule '.yml' => '.rb' do |filename|
              puts "Updating Ansible file #{filename.name} from #{filename.source}..."
              file_builder = Ansible::Ruby::DslBuilders::FileLevel.new
              exception = file_builder._handled_eval filename.source
              # Avoid lengthy stack trace
              raise exception if exception
              playbook = file_builder._result
              yml = Ansible::Ruby::Serializer.serialize playbook.to_h
              File.write filename.name, yml
            end
            @rule_done = true
          end
        end
      end
    end
  end
end

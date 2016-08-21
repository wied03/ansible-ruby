require 'rake/tasklib'
require 'ansible-ruby'

module Ansible
  module Ruby
    module Rake
      class Task < ::Rake::TaskLib
        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :playbooks
        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :options

        def initialize(parameters = :default)
          self.class.load_rule
          name, deps = parse_params parameters
          yield self if block_given?
          raise 'You did not supply any playbooks!' unless playbooks && [*playbooks].any?
          deps ||= []
          filenames = yaml_filenames([*playbooks])
          deps = [*deps] + filenames
          task name => deps do
            flat = options ? options + ' ' : ''
            sh "ansible-playbook #{flat}#{filenames.join ' '}"
          end
        end

        private

        class << self
          def load_rule
            return if @rule_done
            ::Rake.application.create_rule '.yml' => '.rb' do |filename|
              puts "Updating Ansible file #{filename.name} from #{filename.source}..."
              ruby = File.read filename.source
              playbook_builder = Ansible::Ruby::DslBuilders::Playbook.new
              playbook = playbook_builder.evaluate ruby
              yml = Ansible::Ruby::Serializer.serialize playbook.to_h
              File.write filename.name, yml
            end
            @rule_done = true
          end
        end

        def yaml_filenames(ruby_files)
          ruby_files.map { |file| file.sub(/\.[^.]+\z/, '.yml') }
        end

        def parse_params(parameters)
          deps = nil
          name = case parameters
                 when Hash
                   name = parameters.keys[0]
                   deps = parameters[name]
                   name
                 else
                   parameters
                 end
          [name, deps]
        end
      end
    end
  end
end

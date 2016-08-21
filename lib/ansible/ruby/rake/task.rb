require 'rake/tasklib'
require 'ansible-ruby'

module Ansible
  module Ruby
    module Rake
      class Task < ::Rake::TaskLib
        attr_accessor :playbooks
        attr_accessor :options

        def initialize(parameters=:default)
          self.class.load_rule
          name, deps = parse_params parameters
          yield self if block_given?
          deps ||= []
          filenames = yaml_filenames([*playbooks])
          deps = [*deps] + filenames
          task name => deps do
            sh "ansible-playbook #{filenames.join ' '}"
          end
        end

        private

        class << self
          def load_rule
            return if @rule_done
            ::Rake.load_rakefile File.absolute_path(File.join(File.dirname(__FILE__), 'rule.rb'))
            @rule_done = true
          end
        end

        def yaml_filenames(ruby_files)
          ruby_files.map { |file| file.sub /\.[^.]+\z/, '.yml' }
        end

        def parse_params parameters
          deps = nil
          name = case parameters
                 when Hash
                   n = parameters.keys[0]
                   deps = parameters[n]
                   n
                 else
                   parameters
                 end
          [name, deps]
        end

      end
    end
  end
end

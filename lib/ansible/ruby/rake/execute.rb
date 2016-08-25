require 'rake/tasklib'
require 'ansible-ruby'
require 'ansible/ruby/rake/task_util'
require 'ansible/ruby/rake/compile'

module Ansible
  module Ruby
    module Rake
      class Execute < ::Rake::TaskLib
        include TaskUtil

        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :playbooks
        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :options

        def initialize(parameters = :default)
          name, deps = parse_params parameters
          yield self if block_given?
          raise 'You did not supply any playbooks!' unless playbooks.any?
          deps ||= []
          compile_task_name = "#{name}_compile".to_sym
          deps = [*deps] << compile_task_name
          playbook_yml_files = yaml_filenames playbooks
          task name => deps do
            flat = flat_options
            flat += ' ' unless flat.empty?
            sh "ansible-playbook #{flat}#{playbook_yml_files.join ' '}"
          end
          desc "Compiles YAML files for #{name.inspect.to_s} task"
          Compile.new compile_task_name do |compile_task|
            compile_task.files = playbooks + role_task_files
          end
        end

        private

        def playbooks
          [*@playbooks]
        end

        def role_task_files
          FileList['roles/*/tasks/**/*.rb']
        end

        def flat_options
          array = [*options] << ENV['ANSIBLE_OPTS']
          array.compact.join ' '
        end
      end
    end
  end
end

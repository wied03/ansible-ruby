require 'spec_helper'
require 'ansible-ruby'
require 'ansible/ruby/rake/task'
Ansible::Ruby::Modules.autoload :Copy, 'rake/copy'

describe Ansible::Ruby::Rake::Task do
  include_context :rake_testing

  context 'real Rake run' do
    describe 'description' do
      # :reek:ControlParameter - just a test
      # :reek:BooleanParameter - just a test
      def rake(task, expect_success = true)
        @output = `rake -f Rakefile_test.rb #{task} 2>&1`
        puts @output
        expect($?.success?).to be_truthy if expect_success
        @output
      end

      subject { rake '-T' }

      it do
        is_expected.to eq <<OUTPUT
rake compile          # explicit compile task
rake default          # the ansible task default
rake default_compile  # Compiles YAML files for :default task
rake stuff            # named ansible task
rake stuff_compile    # Compiles YAML files for :stuff task
OUTPUT
      end
    end
  end

  context 'programmatic Rake run' do
    include_context :rake_invoke

    let(:yaml_file) { 'playbook1_test.yml' }
    let(:ruby_file) { 'playbook1_test.rb' }

    context 'default' do
      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = ruby_file
        end
      end

      it { is_expected.to execute_command 'ansible-playbook playbook1_test.yml' }
      it { is_expected.to generate_yaml yaml_file, that: include('host1:host2') }
    end

    context 'multiple playbook files' do
      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = %w(playbook1_test.rb playbook2_test.rb)
        end
      end

      it { is_expected.to execute_command 'ansible-playbook playbook1_test.yml playbook2_test.yml' }
      it { is_expected.to generate_yaml 'playbook1_test.yml', that: include('host1:host2') }
      it { is_expected.to generate_yaml 'playbook2_test.yml', that: include('something else') }
    end

    context 'options' do
      { flat: '--ansible-option', array: ['--ansible-option'] }.each do |type, value|
        context type do
          let(:task) do
            Ansible::Ruby::Rake::Task.new do |task|
              task.playbooks = ruby_file
              task.options = value
            end
          end

          it { is_expected.to execute_command 'ansible-playbook --ansible-option playbook1_test.yml' }
        end
      end

      context 'env override' do
        around do |example|
          ENV['ANSIBLE_OPTS'] = '--check'
          example.run
          ENV.delete 'ANSIBLE_OPTS'
        end

        context 'combined' do
          let(:task) do
            Ansible::Ruby::Rake::Task.new do |task|
              task.playbooks = ruby_file
              task.options = '-v'
            end
          end

          it { is_expected.to execute_command 'ansible-playbook -v --check playbook1_test.yml' }
        end

        context 'only env' do
          let(:task) do
            Ansible::Ruby::Rake::Task.new do |task|
              task.playbooks = ruby_file
            end
          end

          it { is_expected.to execute_command 'ansible-playbook --check playbook1_test.yml' }
        end
      end
    end

    context 'dependent task' do
      let(:test_file) { 'foobar_test.yml' }
      let(:task) do
        ::Rake::Task.define_task :foobar do
          FileUtils.touch test_file
        end

        Ansible::Ruby::Rake::Task.new default: :foobar do |task|
          task.playbooks = ruby_file
        end
      end

      it { is_expected.to execute_command 'ansible-playbook playbook1_test.yml' }
      it { is_expected.to generate_yaml yaml_file, that: include('host1:host2') }

      it 'executes the dependency' do
        expect(File.exist?(test_file)).to be_truthy
      end
    end

    context 'role tasks' do
      let(:rake_dir) { 'spec/rake/nested_tasks' }
      let(:task_yml) { 'roles/role1/tasks/task1_test.yml' }

      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = ruby_file
        end
      end

      it { is_expected.to generate_yaml yaml_file, that: include('host1:host2', 'roles') }
      it { is_expected.to generate_yaml task_yml, that: include('- name: Copy something over') }
      it { is_expected.to generate_yaml task_yml, that: include('- name: Copy something else over') }
    end

    context 'YML and Ruby playbook' do
      def execute_task
        File.write 'sample3_test.yml', 'original YML file'
        super
      end

      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = %w(playbook1_test.rb sample3_test.yml)
        end
      end

      it { is_expected.to execute_command 'ansible-playbook playbook1_test.yml sample3_test.yml' }
      it { is_expected.to generate_yaml 'playbook1_test.yml', that: include('host1:host2') }
      it { is_expected.to generate_yaml 'sample3_test.yml', that: include('original YML file') }
    end

    context 'no playbook' do
      def execute_task
        # overridding parent so we can test error
      end

      subject { -> { Ansible::Ruby::Rake::Task.new } }

      it { is_expected.to raise_error 'You did not supply any playbooks!' }
    end
  end
end

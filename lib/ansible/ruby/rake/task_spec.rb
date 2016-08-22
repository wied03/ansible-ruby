require 'spec_helper'
require 'ansible-ruby'
require 'ansible/ruby/rake/task'

describe 'Rake task' do
  let(:rake_dir) { 'spec/rake/no_nested_tasks' }

  around do |example|
    Dir.chdir rake_dir do
      FileUtils.rm_rf Dir.glob('**/*/*.yml')
      example.run
    end
  end

  before do
    Rake::Task.clear
    task = Ansible::Ruby::Rake::Task
    instance_var = :'@rule_done'
    task.remove_instance_variable(instance_var) if task.instance_variable_defined? instance_var
  end

  describe 'real description' do
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
rake default  # the ansible task default
rake stuff    # named ansible task
OUTPUT
    end
  end

  context 'programmatic' do
    let(:yaml_file) { 'playbook1_test.yml' }
    let(:ruby_file) { 'playbook1_test.rb' }

    before { execute_task }

    def execute_task
      @commands = []
      expect(task).to receive(:sh) do |command, _|
        @commands << command
      end
      Rake::Task[:default].invoke
    end

    context 'default' do
      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = ruby_file
        end
      end

      it 'executed the command' do
        expect(@commands).to include 'ansible-playbook playbook1_test.yml'
      end

      it 'generates the YAML' do
        expect(File.exist?(yaml_file)).to be_truthy
        expect(File.read(yaml_file)).to include 'host1:host2'
      end
    end

    context 'multiple playbook files' do
      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = %w(playbook1_test.rb playbook2_test.rb)
        end
      end

      it 'executed the command' do
        expect(@commands).to include 'ansible-playbook playbook1_test.yml playbook2_test.yml'
      end

      it 'generates the YAML' do
        expect(File.exist?('playbook1_test.yml')).to be_truthy
        expect(File.read('playbook1_test.yml')).to include 'host1:host2'
        expect(File.exist?('playbook2_test.yml')).to be_truthy
        expect(File.read('playbook2_test.yml')).to include 'something else'
      end
    end

    context 'options' do
      let(:task) do
        Ansible::Ruby::Rake::Task.new do |task|
          task.playbooks = ruby_file
          task.options = '--ansible-option'
        end
      end

      it 'executed the command' do
        expect(@commands).to include 'ansible-playbook --ansible-option playbook1_test.yml'
      end

      it 'generates the YAML' do
        expect(File.exist?(yaml_file)).to be_truthy
        expect(File.read(yaml_file)).to include 'host1:host2'
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

      it 'executed the command' do
        expect(@commands).to include 'ansible-playbook playbook1_test.yml'
      end

      it 'generates the YAML' do
        expect(File.exist?(yaml_file)).to be_truthy
        expect(File.read(yaml_file)).to include 'host1:host2'
      end

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

      it 'generates playbook YAML' do
        expect(File.exist?(yaml_file)).to be_truthy
        expect(File.read(yaml_file)).to include 'host1:host2'
        expect(File.read(yaml_file)).to include 'roles'
      end

      it 'generates task YAML' do
        expect(File.exist?(task_yml)).to be_truthy
        expect(File.read(task_yml)).to include '- name: Copy something over'
        expect(File.read(task_yml)).to include '- name: Copy something else over'
      end
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

      it 'executed the command' do
        expect(@commands).to include 'ansible-playbook playbook1_test.yml sample3_test.yml'
      end

      it 'generates the YAML' do
        expect(File.exist?('playbook1_test.yml')).to be_truthy
        expect(File.read('playbook1_test.yml')).to include 'host1:host2'
        expect(File.exist?('sample3_test.yml')).to be_truthy
        expect(File.read('sample3_test.yml')).to include 'original YML file'
      end
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

require 'spec_helper'
require 'ansible-ruby'
require 'ansible/ruby/rake/task'

describe 'Rake task' do
  let(:rake_dir) { File.dirname(__FILE__) }

  around do |example|
    Dir.chdir rake_dir do
      FileUtils.rm_rf Dir.glob('*.yml')
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
    def rake(task, expect_success=true)
      @output = `rake -f Rakefile_test.rb #{task} 2>&1`
      puts @output
      expect($?.success?).to be_truthy if expect_success
      @output
    end

    subject { rake '-T' }

    it do
      is_expected.to eq <<OUTPUT
rake default         # the ansible task default
rake dependent_task  # dependent task
rake no_playbook     # no playbook task
rake with_deps       # task with deps
rake with_options    # with options task
OUTPUT
    end
  end

  context 'default' do
    let(:task) do
      Ansible::Ruby::Rake::Task.new do |task|
        task.playbooks = 'sample_test.rb'
      end
    end

    let(:yaml_file) { 'sample_test.yml' }

    before do
      @commands = []
      expect(task).to receive(:sh) do |command, _|
        @commands << command
      end
      Rake::Task[:default].invoke
    end

    it 'executed the command' do
      expect(@commands).to include 'ansible-playbook sample_test.yml'
    end

    it 'generates the YAML' do
      expect(File.exist?(yaml_file)).to be_truthy
      expect(File.read(yaml_file)).to include 'host1:host2'
    end
  end

  context 'multiple playbook files' do
    pending 'write this'
  end

  pending 'write this'
end

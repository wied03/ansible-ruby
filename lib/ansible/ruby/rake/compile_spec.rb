# See LICENSE.txt in root of repository
require 'spec_helper'
require 'ansible-ruby'
require 'ansible/ruby/rake/compile'

describe Ansible::Ruby::Rake::Compile do
  include_context :rake_testing
  include_context :rake_invoke

  let(:yaml_file) { 'playbook1_test.yml' }
  let(:ruby_file) { 'playbook1_test.rb' }

  context 'dependent task' do
    let(:test_file) { 'foobar_test.yml' }
    let(:task) do
      ::Rake::Task.define_task :foobar do
        FileUtils.touch test_file
      end

      Ansible::Ruby::Rake::Compile.new default: :foobar do |task|
        task.files = ruby_file
      end
    end

    it { is_expected.to_not execute_commands }
    it { is_expected.to have_yaml yaml_file, that: include('host1:host2') }

    it 'executes the dependency' do
      expect(File.exist?(test_file)).to be_truthy
    end
  end

  context 'no files' do
    def execute_task
      # overriding parent so we can test error
    end

    subject { -> { Ansible::Ruby::Rake::Compile.new } }

    it { is_expected.to raise_error 'You did not supply any files!' }
  end

  context 'YML and Ruby files' do
    def execute_task
      File.write 'sample3_test.yml', 'original YML file'
      super
    end

    let(:task) do
      Ansible::Ruby::Rake::Compile.new do |task|
        task.files = %w(playbook1_test.rb sample3_test.yml)
      end
    end

    it { is_expected.to_not execute_commands }
    it { is_expected.to have_yaml 'playbook1_test.yml', that: include('host1:host2') }
    it { is_expected.to have_yaml 'sample3_test.yml', that: include('original YML file') }
  end

  context 'compile error' do
    pending 'write this'
  end
end

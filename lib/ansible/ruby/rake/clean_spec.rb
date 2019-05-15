# frozen_string_literal: true

# See LICENSE.txt in root of repository
require 'spec_helper'
require 'ansible/ruby/rake/clean'

describe Ansible::Ruby::Rake::Clean do
  include_context :rake_testing
  include_context :rake_invoke

  # need to create file before running
  def execute_task
    create_test_files
    commands = rake_result[:commands] = []
    allow(task).to receive(:sh) do |command, _|
      commands << command
    end
    Rake::Task[:default].invoke
  end

  def create_test_files; end

  context 'only ansible-ruby generated YAML' do
    def create_test_files
      FileUtils.touch 'something.yml'
    end

    let(:task) do
      Ansible::Ruby::Rake::Clean.new do |task|
        task.files = 'something.rb'
      end
    end

    it { is_expected.to_not execute_commands }
    it { is_expected.to_not have_yaml }
  end

  context 'other YAML too' do
    def create_test_files
      FileUtils.touch %w[something.yml else.yml]
    end

    let(:task) do
      Ansible::Ruby::Rake::Clean.new do |task|
        task.files = 'something.rb'
      end
    end

    it { is_expected.to_not execute_commands }
    it { is_expected.to have_yaml 'else.yml' }
    it { is_expected.to_not have_yaml 'something.yml' }
  end

  context 'dependent task' do
    let(:test_file) { 'foobar_test.yml' }
    let(:task) do
      ::Rake::Task.define_task :foobar do
        FileUtils.touch test_file
      end

      Ansible::Ruby::Rake::Clean.new default: :foobar do |task|
        task.files = 'something.rb'
      end
    end

    it { is_expected.to_not execute_commands }

    it 'executes the dependency' do
      expect(File.exist?(test_file)).to be_truthy
    end
  end

  context 'no files given' do
    def execute_task
      # overriding parent so we can test error
    end

    subject { -> { Ansible::Ruby::Rake::Clean.new } }

    it { is_expected.to raise_error 'You did not supply any files!' }
  end
end

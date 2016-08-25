require 'spec_helper'

RSpec.shared_context :rake_testing do
  before do
    Rake::Task.clear
    task = Ansible::Ruby::Rake::Compile
    instance_var = :'@rule_done'
    task.remove_instance_variable(instance_var) if task.instance_variable_defined? instance_var
  end

  let(:rake_dir) { 'spec/rake/no_nested_tasks' }

  around do |example|
    Dir.chdir rake_dir do
      FileUtils.rm_rf Dir.glob('**/*/*.yml')
      example.run
    end
  end
end

RSpec.shared_context :rake_invoke do
  before { execute_task }

  subject(:rake_result) { {} }

  def execute_task
    commands = rake_result[:commands] = []
    expect(task).to receive(:sh) do |command, _|
      commands << command
    end
    Rake::Task[:default].invoke
  end
end

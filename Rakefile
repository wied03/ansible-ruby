require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'
require 'ansible/ruby/rake/task'

task default: [:clean, :spec, :rubocop, :reek, :ansible_lint]

desc 'Run specs'
RSpec::Core::RakeTask.new :spec do |task|
  task.pattern = 'lib/**/*_spec.rb'
end

desc 'Runs Rubocop'
RuboCop::RakeTask.new do |task|
  task.options = %w(-D -S)
end

desc 'Runs Reek stuff'
Reek::Rake::Task.new do |task|
  # rake task overrides all config.reek exclusions, which is annoying and it won't let us set a FileList directly
  files = FileList['**/*.rb']
          .exclude('vendor/**/*') # Travis stuff
  task.instance_variable_set :@source_files, files
end

desc 'cleans out generated files'
task :clean do
  rm_rf FileList['spec/*.yml']
end

# Want to use the rule for our lint Rake task
Ansible::Ruby::Rake::Task.send(:load_rule)
desc 'Runs a check against a generated playbook'
task ansible_lint: 'spec/ansible_lint/example_test.yml' do
  sh './setup.py build'
  # Grab the first installed egg
  ansible_lint = FileList['.eggs/ansible_lint*.egg'][0]
  all_eggs = FileList['.eggs/*.egg']
  sh "PYTHONPATH=#{all_eggs.join(':')} #{ansible_lint}/EGG-INFO/scripts/ansible-lint -v spec/ansible_lint/example_test.yml"
end

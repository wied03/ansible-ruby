require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'

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

rule '.yml' => '.rb' do |t|
  puts "Updating #{t.name}"
  require 'ansible-ruby'
  ruby = File.read t.source
  playbook_builder = Ansible::Ruby::DslBuilders::Playbook.new
  playbook = playbook_builder.evaluate ruby
  yml = Ansible::Ruby::Serializer.serialize playbook.to_h
  File.write t.name, yml
end

desc 'cleans out generated files'
task :clean do
  rm_rf FileList['spec/*.yml']
end

desc 'Runs a check against a generated playbook'
task ansible_lint: 'spec/example.yml' do
  sh './setup.py build'
  sh 'PYTHONPATH=.eggs/ansible_lint-3.3.0rc2-py2.7.egg .eggs/ansible_lint-3.3.0rc2-py2.7.egg/EGG-INFO/scripts/ansible-lint -v spec/example.yml'
end

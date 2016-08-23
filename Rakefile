require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'
require 'ansible/ruby/rake/task'
require_relative 'util/parser'

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
  rm_rf FileList['spec/**/*.yml']
end

# Want to use the rule for our lint Rake task
PLAYBOOKS = %w(example_test.yml role_test.yml).map { |filename| File.join('spec/ansible_lint', filename) }
Ansible::Ruby::Rake::Task.send(:load_rule)

task :python_dependencies do
  sh './setup.py build'
end

desc 'Runs a check against generated playbooks'
task ansible_lint: (PLAYBOOKS << :python_dependencies) do
  # Grab the first installed egg
  ansible_lint = FileList['.eggs/ansible_lint*.egg'][0]
  all_eggs = FileList['.eggs/*.egg']
  PLAYBOOKS.each do |playbook|
    sh "PYTHONPATH=#{all_eggs.join(':')} #{ansible_lint}/EGG-INFO/scripts/ansible-lint -v #{playbook}"
  end
end

def get_yaml(file)
  python = File.read file
  match = /^DOCUMENTATION.*?'''(.*?)'''/m.match(python)
  raise "Unable to find description in #{file}" unless match
  description = match[1]
  match = /^EXAMPLES.*?'''(.*?)'''/m.match(python)
  raise "Unable to find examples in #{file}" unless match
  [description, match[1]]
end

desc 'Update/generate Ruby modules from Ansible modules'
task :update_modules => :python_dependencies do
  ansible_dir = `python util/get_ansible.py`.strip
  files = FileList[File.join(ansible_dir, 'modules/core/**/*.py')]
            .exclude('**/*/_*.py')
  already_processed = []
  files.each do |file|
    puts "****** Begin file #{file}"
    puts 'Retrieving description and example'
    description, example = get_yaml file
    puts 'Parsing description/example'
    ruby_result = Ansible::Ruby::Parser.from_yaml_string description, example
    ruby_path = File.join('lib/ansible/ruby/modules/generated', File.basename(file, '.py')) + '.rb'
    puts "Writing Ruby code to #{ruby_path}"
    if already_processed.include? ruby_path
      raise "We've already processed #{ruby_path}"
    end
    already_processed << ruby_path
    File.write ruby_path, ruby_result
    puts "******   End file #{file}"
  end

  # TODO: Create a requires file
end

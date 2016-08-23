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
  match = /^DOCUMENTATION.*?['"]{3}(.*?)['"]{3}/m.match(python)
  raise "Unable to find description in #{file}" unless match
  description = match[1]
  match = /^EXAMPLES.*?['"]{3}(.*?)['"]{3}/m.match(python)
  no_examples_ok = /async_status\.py/
  examples = if match
               match[1]
             else
               unless no_examples_ok.match(file)
                 raise "Unable to find examples in #{file}"
               end
             end
  [description, examples]
end

desc 'Update/generate Ruby modules from Ansible modules'
task :update_modules => :python_dependencies do
  ansible_dir = `python util/get_ansible.py`.strip
  modules_dir = Pathname.new(File.join(ansible_dir, 'modules'))
  files = if ENV['FILE']
            [ENV['FILE']]
          else
            FileList[File.join(ansible_dir, 'modules/**/*.py')]
              .exclude('**/*/_*.py')
              .exclude('**/*/include_vars.py')
              .exclude('**/*/async_wrapper.py')
          end
  already_processed = []
  fails = {}
  files.each do |file|
    for_file = []
    out = StringIO.new
    $stderr = out
    begin
      for_file << 'Retrieving description and example'
      description, example = get_yaml file
      for_file << 'Parsing YAML'
      ruby_result = Ansible::Ruby::Parser.from_yaml_string description, example
      python_dir = File.dirname(file)
      ruby_filename = File.basename(file, '.py') + '.rb'
      module_path = Pathname.new(python_dir).relative_path_from(modules_dir)
      ruby_path = File.join('lib/ansible/ruby/modules/generated', module_path, ruby_filename)
      mkdir_p File.dirname(ruby_path)
      for_file << "Writing Ruby code to #{ruby_path}"
      if already_processed.include? ruby_path
        raise "We've already processed #{ruby_path}"
      end
      already_processed << ruby_path
      File.write ruby_path, ruby_result
    rescue StandardError => e
      for_file << $stderr.string
      fails[file] = {
        exception: e,
        output: for_file.join("\n")
      }
    ensure
      $stderr = STDERR
    end
  end

  fails.each do |file, details|
    puts "Failed file #{file}"
    puts details[:output]
    exception = details[:exception]
    puts exception
    puts exception.backtrace
    puts '-----------------------------------'
  end

  puts "#{already_processed.length} modules successfully processed. #{fails.length} failures"
  raise '1 or more files failed' if fails.any?
  # TODO: Create a requires file
end

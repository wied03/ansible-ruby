require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'
require 'ansible/ruby/rake/task'
require_relative 'util/parser'
require 'digest'
require 'json'

task default: [:clean, :spec, :update_modules, :rubocop, :reek, :ansible_lint]

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
task ansible_lint: (PLAYBOOKS.clone << :python_dependencies) do
  # Grab the first installed egg
  ansible_lint = FileList['.eggs/ansible_lint*.egg'][0]
  all_eggs = FileList['.eggs/*.egg']
  PLAYBOOKS.each do |playbook|
    sh "PYTHONPATH=#{all_eggs.join(':')} #{ansible_lint}/EGG-INFO/scripts/ansible-lint -v #{playbook}"
  end
end

no_examples_ok = [
  'async_status.py', # none exist
  'nmcli.py', # complex examples
  'slurp.py' # no examples that aren't command lines
]
SKIP_EXAMPLES_REGEX = no_examples_ok.map { |text| Regexp.new text }

def skip_example?(file)
  SKIP_EXAMPLES_REGEX.any? { |regex| regex.match(file) }
end

def get_yaml(file)
  python = File.read file
  match = /^DOCUMENTATION.*?['"]{3}(.*?)['"]{3}/m.match(python)
  raise "Unable to find description in #{file}" unless match
  description = match[1]
  match = /^EXAMPLES.*?['"]{3}(.*?)['"]{3}/m.match(python)
  examples = if match
               match[1]
             else
               raise "Unable to find examples in #{file}" unless skip_example?(file)
             end
  [description, examples]
end

desc 'Update/generate Ruby modules from Ansible modules'
task update_modules: [:generate_modules, :verify_checksums]

NEW_CHECKSUMS = 'util/checksums_new.json'.freeze
task generate_modules: :python_dependencies do
  python_path = FileList['.eggs/*.egg'].join ':'
  ansible_dir = `PYTHONPATH=#{python_path} python util/get_ansible.py`.strip
  puts "Ansible directory #{ansible_dir}"
  modules_dir = Pathname.new(File.join(ansible_dir, 'modules'))
  files = if ENV['FILE']
            [ENV['FILE']]
          else
            FileList[File.join(ansible_dir, 'modules/**/*.py')]
              .exclude(/__init__.py/)
              .exclude(/include_vars.py/)
              .exclude(/async_wrapper.py/)
          end
  processed_files = []
  checksums = {}
  fails = {}
  files.each do |file|
    for_file = []
    out = StringIO.new
    $stderr = out
    begin
      for_file << 'Retrieving description and example'
      description, example = get_yaml file
      for_file << 'Parsing YAML'
      example_fail_is_ok = skip_example?(file)
      ruby_result = Ansible::Ruby::Parser.from_yaml_string description, example, example_fail_is_ok
      python_dir = File.dirname(file)
      ruby_filename = File.basename(file, '.py') + '.rb'
      # don't want leading _ in front of stuff
      ruby_filename.gsub!(/^_/, '')
      module_path = Pathname.new(python_dir).relative_path_from(modules_dir)
      ruby_path = File.join('lib/ansible/ruby/modules/generated', module_path, ruby_filename)
      mkdir_p File.dirname(ruby_path)
      for_file << "Writing Ruby code to #{ruby_path}"
      processed_files << ruby_path
      if checksums.include? ruby_filename
        raise "We've already processed a module by this name!"
      end
      checksums[ruby_filename] = Digest::SHA256.base64digest ruby_result
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

  puts "#{processed_files.length} modules successfully processed. #{fails.length} failures"
  raise '1 or more files failed' if fails.any?
  base_dir = Pathname.new('lib')
  puts 'Writing checksums'
  File.write NEW_CHECKSUMS, JSON.pretty_generate(checksums)
  puts 'Writing requires'
  File.open 'lib/ansible/ruby/modules/generated.rb', 'w' do |file|
    file << <<HEADER
# Generated file, DO NOT EDIT!

ansible_mod = Ansible::Ruby::Modules

HEADER
    processed_files.each do |ruby, _|
      relative = Pathname.new(ruby).relative_path_from(base_dir)
      without_extension = relative.to_s.gsub(/\.rb$/, '')
      klass_name = File.basename without_extension
      custom_modules = FileList["lib/ansible/ruby/modules/custom/**/#{File.basename(relative)}"]
      if custom_modules.any?
        file << "# Using custom module\n"
        without_extension = Pathname.new(custom_modules[0]).relative_path_from(base_dir).to_s
        without_extension = without_extension.gsub(/\.rb$/, '')
      end
      file << "ansible_mod.autoload(:#{klass_name.capitalize}, '#{without_extension}')\n"
    end
  end
end

task :verify_checksums do
  existing_sums = 'util/checksums_existing.json'
  new_checksums = JSON.parse File.read(NEW_CHECKSUMS)
  valid_custom_checksums = Hash[FileList['lib/ansible/ruby/modules/custom/**/*.rb']
                           .exclude('**/*_spec.rb')
                           .map do |filename|
                                  file_contents = File.read filename
                                  module_only = File.basename(filename)
                                  match = /# VALIDATED_CHECKSUM: (.*)$/.match(file_contents)
                                  validated_checksum = match && match[1]
                                  unless validated_checksum
                                    validated_checksum = new_checksums[module_only]
                                    # No need for empty checksums
                                    if validated_checksum
                                      puts "Adding checksum to #{filename}"
                                      File.write filename, "# VALIDATED_CHECKSUM: #{validated_checksum}\n" + file_contents
                                    end
                                  end
                                  [module_only, validated_checksum]
                                end]

  problems = new_checksums.map do |changed_file, new_checksum|
    next unless valid_custom_checksums.include? changed_file
    existing_checksum = valid_custom_checksums[changed_file]
    next unless existing_checksum != new_checksum
    "Module #{changed_file} - old checksum - #{existing_checksum} - new checksum #{new_checksum}"
  end.compact

  if problems.any?
    puts 'The following files have been customized and the generated module has changed.'
    puts 'Once you have validated the changes, remove the # VALIDATED_CHECKSUM line at the top of your source file and run this again'
    puts problems.join "\n"
    raise 'Failed checksum'
  end
  mv NEW_CHECKSUMS, existing_sums
end

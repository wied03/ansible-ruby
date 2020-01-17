# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'
require 'ansible/ruby/rake/tasks'
require_relative 'util/parser'
require 'digest'
require 'json'
$: << '.'

task default: %i[spec
                 report_coverage
                 update_modules
                 rubocop
                 compile_examples
                 verify_custom_mods]

task :report_coverage do
  sh 'codeclimate-test-reporter' if ENV['TRAVIS']
end

desc 'Run specs'
RSpec::Core::RakeTask.new :spec do |task|
  task.pattern = 'lib/**/*_spec.rb,util/**/*_spec.rb'
end

desc 'Runs Rubocop'
RuboCop::RakeTask.new do |task|
  task.options = %w[-D -S]
end

desc 'Runs Reek stuff'
Reek::Rake::Task.new do |task|
  # rake task overrides all config.reek exclusions, which is annoying and it won't let us set a FileList directly
  files = FileList['**/*.rb']
          .exclude('vendor/**/*') # Travis stuff
  task.instance_variable_set :@source_files, files
end

task :python_dependencies do
  sh 'pip3 install ansible==2.7.1 ansible-lint'
end

desc 'Compiles examples'
task :compile_examples do
  Dir.chdir 'examples' do
    tasks = %w[ami block command default]
    clean_compile = tasks.map { |task| "#{task}_clean" } + tasks.map { |task| "#{task}_compile" }
    sh "rake --trace #{clean_compile.join ' '}"
  end
end

desc 'Runs a check against generated playbooks'
task ansible_lint: %i[compile_examples python_dependencies] do
  ansible_lint_dir = `python3 util/get_ansible_lint.py`.strip
  puts "Ansible lint directory #{ansible_lint_dir}"
  playbooks = FileList['examples/**/*.yml'].join ' '
  sh "python3 #{ansible_lint_dir}/__init__.py -v #{playbooks}"
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
  metadata_json = /^ANSIBLE_METADATA = (.*?\})/m.match(python).captures[0]
  metadata_json = metadata_json.gsub("'", '"')
  metadata = JSON.parse(metadata_json)
  if metadata['status'].include? 'removed'
    puts "Skipping #{file} because it has removed status"
    return nil
  end
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
task update_modules: %i[generate_modules verify_checksums]

NEW_CHECKSUMS = 'util/checksums_new.json'
task generate_modules: :python_dependencies do
  generated_dir = 'lib/ansible/ruby/modules/generated'
  sh "rm -rf #{generated_dir}"
  mkdir generated_dir
  cp 'lib/ansible/ruby/modules/rubocop_generated.yml',
     "#{generated_dir}/.rubocop.yml"
  ansible_dir = `python3 util/get_ansible.py`.strip
  puts "Ansible directory #{ansible_dir}"
  modules_dir = Pathname.new(File.join(ansible_dir, 'modules'))
  files = if ENV['FILE']
            [ENV['FILE']]
          else
            FileList[File.join(ansible_dir, 'modules/**/*.py')]
              .exclude(/__init__.py/)
              .exclude(/include_vars.py/)
              .exclude(/async_wrapper.py/)
              .exclude(/netscaler_lb_vserver.py/) # TODO: Fix these modules
              .exclude(/netscaler_lb_monitor.py/) # TODO: Fix these modules
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
      results = get_yaml file
      next unless results

      description, example = results
      for_file << 'Parsing YAML'
      example_fail_is_ok = skip_example?(file)
      ruby_result = Ansible::Ruby::Parser.from_yaml_string description,
                                                           example,
                                                           example_fail_is_ok
      python_dir = File.dirname(file)
      ruby_filename = File.basename(file, '.py') + '.rb'
      # don't want leading _ in front of stuff
      ruby_filename.gsub!(/^_/, '')
      module_path = Pathname.new(python_dir).relative_path_from(modules_dir)
      ruby_path = File.join('lib/ansible/ruby/modules/generated', module_path, ruby_filename)
      mkdir_p File.dirname(ruby_path)
      for_file << "Writing Ruby code to #{ruby_path}"
      processed_files << ruby_path
      raise "We've already processed a module by this name!" if checksums.include? ruby_filename

      checksums[ruby_filename] = Digest::SHA256.base64digest ruby_result
      File.write ruby_path, ruby_result
    rescue StandardError => e
      for_file << $stderr.string
      fails[file] = {
        exception: e,
        output: for_file.join("\n")
      }
      raise "File #{file}" + fails[file].to_s if ENV['STOP_AFTER_ONE']
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
  File.open 'lib/ansible/ruby/modules/all.rb', 'w' do |file|
    file << <<~HEADER
      # frozen_string_literal: true
      # Generated file, DO NOT EDIT!

      ansible_mod = Ansible::Ruby::Modules

    HEADER
    overridden_modules = []
    processed_files.each do |ruby, _|
      relative = Pathname.new(ruby).relative_path_from(base_dir)
      without_extension = relative.to_s.gsub(/\.rb$/, '')
      klass_name = File.basename without_extension
      custom_modules = FileList["lib/ansible/ruby/modules/custom/**/#{File.basename(relative)}"]
      if custom_modules.any?
        custom_module = custom_modules[0]
        overridden_modules << custom_module
        file << "# Using custom module\n"
        without_extension = Pathname.new(custom_module).relative_path_from(base_dir).to_s
        without_extension = without_extension.gsub(/\.rb$/, '')
      end
      file << "ansible_mod.autoload(:#{klass_name.capitalize}, '#{without_extension}')\n"
    end
    (FileList['lib/ansible/ruby/modules/custom/**/*.rb'].exclude('**/*_spec.rb') - overridden_modules).each do |mod|
      relative = Pathname.new(mod).relative_path_from(base_dir)
      without_extension = relative.to_s.gsub(/\.rb$/, '')
      klass_name = File.basename without_extension
      file << "ansible_mod.autoload(:#{klass_name.capitalize}, '#{without_extension}')\n"
    end
  end
end

def custom_module_files
  FileList['lib/ansible/ruby/modules/custom/**/*.rb'].exclude('**/*_spec.rb')
end

task :verify_checksums do
  existing_sums = 'util/checksums_existing.json'
  new_checksums = JSON.parse File.read(NEW_CHECKSUMS)
  valid_custom_checksums = Hash[custom_module_files.map do |filename|
    file_contents = File.read filename
    module_only = File.basename(filename)
    match = /# VALIDATED_CHECKSUM: (.*)$/.match(file_contents)
    validated_checksum = match && match[1]
    unless validated_checksum
      validated_checksum = new_checksums[module_only]
      # No need for empty checksums
      if validated_checksum
        puts "Adding checksum to #{filename}"
        lines = file_contents.split "\n"
        index = lines.find_index '# frozen_string_literal: true'
        lines.insert index + 1, "# VALIDATED_CHECKSUM: #{validated_checksum}"
        # trailing new line for file
        lines << ''
        File.write filename, lines.join("\n")
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

desc 'Verify custom modules all require properly'
task :verify_custom_mods do
  custom_module_files.each do |file|
    puts "Verifying we can require custom file #{file}"
    require file
  end
end

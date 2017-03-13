# frozen_string_literal: true
require 'ansible/ruby/rake/tasks'

desc 'the ansible task default'
Ansible::Ruby::Rake::Execute.new do |task|
  task.playbooks = 'lib/ansible/ruby/rake/sample_test.rb'
end

desc 'named ansible task'
Ansible::Ruby::Rake::Execute.new :stuff do |task|
  task.playbooks = 'lib/ansible/ruby/rake/sample_test.rb'
end
# rubocop: enable Style/FileName

desc 'explicit compile task'
Ansible::Ruby::Rake::Compile.new :compile do |task|
  task.files = 'foobar'
end

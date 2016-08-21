require 'ansible/ruby/rake/task'

desc 'the ansible task default'
Ansible::Ruby::Rake::Task.new do |task|
  task.playbooks = 'lib/ansible/ruby/rake/sample_test.rb'
end

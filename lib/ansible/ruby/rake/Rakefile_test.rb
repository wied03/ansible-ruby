require 'ansible/ruby/rake/task'

PLAYBOOK = 'lib/ansible/ruby/rake/sample_test.rb'

desc 'the ansible task default'
Ansible::Ruby::Rake::Task.new do |task|
  task.playbooks = PLAYBOOK
end

desc 'no playbook task'
Ansible::Ruby::Rake::Task.new(:no_playbook)

# TODO: Remove these

desc 'with options task'
Ansible::Ruby::Rake::Task.new :with_options do |task|
  task.playbooks = PLAYBOOK
  task.options = '-v'
end

desc 'dependent task'
task :dependent_task do
  touch 'dependent.ran'
end

desc 'task with deps'
Ansible::Ruby::Rake::Task.new :with_deps => :dependent_task do |task|
  task.playbooks = PLAYBOOK
end

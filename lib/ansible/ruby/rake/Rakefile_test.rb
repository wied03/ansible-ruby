require 'ansible/ruby/rake/task'

desc 'the ansible task default'
Ansible::Ruby::Rake::Task.new do |task|
  task.playbook = 'sample.rb'
end

desc 'no playbook task'
Ansible::Ruby::Rake::Task.new(:no_playbook)

desc 'with options task'
Ansible::Ruby::Rake::Task.new :with_options do |task|
  task.playbook = 'sample.rb'
  task.options = '-v'
end

desc 'dependent task'
task :dependent_task do
  touch 'dependent.ran'
end

desc 'task with deps'
Ansible::Ruby::Rake::Task.new :with_deps => :dependent_task do |task|
  task.playbook = 'sample.rb'
end

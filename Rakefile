require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

desc 'Test'
RSpec::Core::RakeTask.new :default

rule '.yml' => '.rb' do |t|
  puts "Updating #{t.name}"
  require 'ansible-ruby'
  ruby = File.read t.source
  playbook_builder = Ansible::Ruby::DslBuilders::Playbook.new
  playbook = playbook_builder.evaluate ruby
  yml = Ansible::Ruby::Serializer.serialize playbook.to_h
  File.write t.name, yml
end

task :ansible => 'spec/example.yml' do
  puts 'run ansible now'
end

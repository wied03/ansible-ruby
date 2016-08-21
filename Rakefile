require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'

task default: [:spec, :rubocop, :reek]

desc 'Run specs'
RSpec::Core::RakeTask.new :spec

desc 'Runs Rubocop'
RuboCop::RakeTask.new do |task|
  task.options = %w(-D -S)
end

rule '.yml' => '.rb' do |t|
  puts "Updating #{t.name}"
  require 'ansible-ruby'
  ruby = File.read t.source
  play_builder = Ansible::Ruby::DslBuilders::Play.new
  play = play_builder.evaluate ruby
  yml = Ansible::Ruby::Serializer.serialize play.to_h
  File.write t.name, yml
end

task ansible: 'spec/example.yml' do
  puts 'run ansible now'
end

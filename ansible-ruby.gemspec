# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'ansible/ruby/version'

Gem::Specification.new do |s|
  s.name = 'ansible-ruby'
  s.version = Ansible::Ruby::VERSION
  s.author = 'Brady Wied'
  s.email = 'brady@bswtechconsulting.com'
  s.summary = 'A Ruby DSL for Ansible'
  s.description = 'Creates a Ruby DSL that compiles .rb files to Ansible YML on a file by file basis'
  s.homepage = 'https://github.com/wied03/ansible-ruby'

  s.files = Dir.glob('lib/**/*.rb')
               .reject { |file| file.end_with?('_spec.rb', '_test.rb') }

  s.require_paths = ['lib']

  s.add_dependency 'activemodel', '~> 5.0'
  s.add_dependency 'rake'
end

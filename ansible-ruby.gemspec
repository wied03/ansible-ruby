# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ansible/ruby/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'ansible-ruby'
  s.version = Ansible::Ruby::VERSION
  s.author = 'Brady Wied'
  s.email = 'brady@bswtechconsulting.com'
  s.summary = 'A Ruby DSL for Ansible'
  s.description = 'TBD'
  s.homepage = 'https://github.com/wied03/ansible-ruby'

  s.files = Dir.glob('lib/**/*.rb')
               .reject { |file| file.end_with?('_spec.rb', '_test.rb') }

  s.require_paths = ['lib']

  s.add_dependency 'rake'
  s.add_dependency 'activemodel', '~> 5.0'
end

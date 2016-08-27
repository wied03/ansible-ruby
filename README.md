# Ansible-Ruby

[![Build Status](http://img.shields.io/travis/wied03/ansible-ruby/master.svg?style=flat)](http://travis-ci.org/wied03/ansible-ruby)
[![Quality](http://img.shields.io/codeclimate/github/wied03/ansible-ruby.svg?style=flat-square)](https://codeclimate.com/github/wied03/ansible-ruby)
[![Coverage](https://codeclimate.com/github/wied03/ansible-ruby/badges/coverage.svg)](https://codeclimate.com/github/wied03/ansible-ruby/coverage)
[![Version](http://img.shields.io/gem/v/ansible-ruby.svg?style=flat-square)](https://rubygems.org/gems/ansible-ruby)

Attempts to create a Ruby DSL on top of Ansible's YML files. Currently this is against Ansible 2.1.1.0.

## What does it do?
* Creates a Ruby DSL that compiles .rb files to YML on a file by file basis
* Type validation
* Assists with basic syntax regarding `register`
* Offers a Rake task to assist in easily generating YML files from dependent Ruby files

## Why does this exist?
YAML is OK but can suffer from the same problems that exist with any markup language. If you can write in a first class language that is syntaxually easier, that might be of some benefit.

## How does this relate to Python and modules?
Python is widely installed (probably moreso than Ruby :()) on machines to be managed. We recognize Ansible's choice here. This tool does not try and change how Ansible modules work. It only tries to avoid editing lots of YML directly.

## Usage

Install Ruby+Bundler (this was tested with Ruby 2.2.5), then add `ansible-ruby` to your Gemfile:

```ruby
gem 'ansible-ruby'
```

## File Structure

Nothing changes here. Lay out playbooks/etc. like you would normally. There are 2 places right now where you can use ansible-ruby files.

1. Playbooks (either with role references or embedded tasks)
2. Tasks within roles

Ansible-ruby does NOT stray beyond the boundaries of a normal Ansible YAML file. Nothing magic with includes, etc.

## Examples
Here is a playbook with a single play:
```ruby
play 'the play name' do
  hosts %w(host1 host2)

  task 'Copy something over' do
    result = copy do
      src '/file1.conf'
      dest '/file2.conf'
    end

    become
    notify 'handler1'
    changed_when "'no upgrade' in #{result.stdout}"
  end

  user 'centos'
end
```

This will be automatically translated to:
```yml
---
# This is a generated YAML file by ansible-ruby, DO NOT EDIT
- hosts: host1:host2
  name: the play name
  tasks:
  - name: Copy something over
    copy:
      src: "/file1.conf"
      dest: "/file2.conf"
    become: true
    register: result_1
    changed_when: "'no upgrade' in result_1.stdout"
    notify:
    - handler1
  user: centos
```

There is also a shortcut for a localhost/local connection play.

```ruby
play 'command fun' do
  local_host
  
  task 'say hello' do
    command 'ls howdy'
  end
end
```

Compiles to:
```yml
---
# This is a generated YAML file by ansible-ruby, DO NOT EDIT
- hosts: localhost
  name: command fun
  tasks:
  - name: say hello
    command: ls howdy
  connection: local
```

Note this is using a tiny bit of Ruby AST-ish syntax with the result variables to make working them more friendly. There is more work to do on this [see issue](https://github.com/wied03/ansible-ruby/issues/5).

You can see more examples in the examples/ directory in the repository.

## Invoke/Rake

You can invoke all of this via a Rake task. The Rake task will, by convention, look for any .rb files under roles/role_name/tasks/*.rb and transform those as well:

```ruby
require 'ansible/ruby/rake/tasks'

desc 'named ansible task'
Ansible::Ruby::Rake::Execute.new :stuff do |task|
  task.playbooks = 'lib/ansible/ruby/rake/sample_test.rb'
end
```

## Module Support

Ruby code within this project parses the YAML documentation in Ansible's modules and creates model classes in Ruby to assist with validation. All of them are there but some of them might need some work.

## Ansible Galaxy

There's no reason why you can't use Ansible Galaxy with this. It hasn't been tested much but since this tool stays within the task/playbook/etc. boundary, it should work fine to use Galaxy roles from ansible-ruby playbooks or even to build Galaxy roles with ansible-ruby.

## Limitations

* Type validation in generated modules isn't 100% correct - [see issue](https://github.com/wied03/ansible-ruby/issues/23)
* Error messages could use improvement - [see issue](https://github.com/wied03/ansible-ruby/issues/7)
* Full inclusion support - [see issue](https://github.com/wied03/ansible-ruby/issues/32)
* Result variable DSL is fairly limited, all it does right now is make sure you use the right variable name (see issues for improvements) 

## License
Copyright (c) 2016, BSW Technology Consulting LLC
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


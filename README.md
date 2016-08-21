# Ansible-Ruby

[![Build Status](http://img.shields.io/travis/wied03/ansible-ruby/master.svg?style=flat)](http://travis-ci.org/wied03/ansible-ruby)
[![Quality](http://img.shields.io/codeclimate/github/wied03/ansible-ruby.svg?style=flat-square)](https://codeclimate.com/github/wied03/ansible-ruby)

Attempts to create a Ruby DSL on top of Ansible's YML files

## What does it do?
* Creates a Ruby DSL that compiles .rb files to YML on a file by file basis
* Assists with basic syntax regarding ```register`
* Offers a Rake task to assist in easily generating YML files from dependent Ruby files

## Why does this exist?
YAML is OK but can suffer from the same problems that exist with any markup language. If you can write in a first class language that is syntaxually easier, that might be of some benefit.

## How does this relate to Python and modules?
Python is widely installed (probably moreso than Ruby :()) on machines to be managed. We recognize Ansible's choice here. This tool does not try and change how Ansible modules work. It only tries to avoid editing lots of YML directly.

## Example
Here is a single play:
```ruby
hosts %w(host1 host2)

name 'the play'

task 'Copy something over' do
  result = foobar do
    src '/file1.conf'
    dest '/file2.conf'
  end

  become
  notify 'handler1'
  changed_when "'no upgrade' in #{result.stdout}"
end

user 'centos'

```

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

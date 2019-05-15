# frozen_string_literal: true

play 'the play name' do
  hosts %w[host1 host2]

  roles 'role1'

  user 'centos'
end

ansible_include 'other_playbook.yml'

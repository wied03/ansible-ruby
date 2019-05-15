# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A trivial test module, this module always returns C(pong) on successful contact. It does not make sense in playbooks, but it is useful from C(/usr/bin/ansible) to verify the ability to login and that a usable Python is configured.
      # This is NOT ICMP ping, this is just a trivial test module that requires Python on the remote-node.
      # For Windows targets, use the M(win_ping) module instead.
      # For Network targets, use the M(net_ping) module instead.
      class Ping < Base
        # @return [String, nil] Data to return for the C(ping) return value.,If this parameter is set to C(crash), the module will cause an exception.
        attribute :data
        validates :data, type: String
      end
    end
  end
end

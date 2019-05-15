# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Checks management connectivity of a windows host.
      # This is NOT ICMP ping, this is just a trivial test module.
      # For non-Windows targets, use the M(ping) module instead.
      # For Network targets, use the M(net_ping) module instead.
      class Win_ping < Base
        # @return [String, nil] Alternate data to return instead of 'pong'.,If this parameter is set to C(crash), the module will cause an exception.
        attribute :data
        validates :data, type: String
      end
    end
  end
end

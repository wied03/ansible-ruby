# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of IPL (inter-peer link) management on Mellanox ONYX network devices.
      class Onyx_mlag_ipl < Base
        # @return [String] Name of the interface (port-channel) IPL should be configured on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the IPL vlan interface.
        attribute :vlan_interface
        validates :vlan_interface, type: String

        # @return [:present, :absent, nil] IPL state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] IPL peer IP address.
        attribute :peer_address
        validates :peer_address, type: String
      end
    end
  end
end

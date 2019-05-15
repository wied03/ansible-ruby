# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of MLAG virtual IPs on Mellanox ONYX network devices.
      class Onyx_mlag_vip < Base
        # @return [String, nil] Virtual IP address of the MLAG. Required if I(state=present).
        attribute :ipaddress
        validates :ipaddress, type: String

        # @return [String, nil] MLAG group name. Required if I(state=present).
        attribute :group_name
        validates :group_name, type: String

        # @return [String, nil] MLAG system MAC address. Required if I(state=present).
        attribute :mac_address
        validates :mac_address, type: String

        # @return [:present, :absent, nil] MLAG VIP state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Delay interval, in seconds, waiting for the changes on mlag VIP to take effect.
        attribute :delay
        validates :delay, type: Integer
      end
    end
  end
end

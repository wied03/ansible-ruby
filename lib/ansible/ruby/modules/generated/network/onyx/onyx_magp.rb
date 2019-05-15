# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of MAGP protocol on vlan interface of Mellanox ONYX network devices.
      class Onyx_magp < Base
        # @return [Integer] MAGP instance number 1-255
        attribute :magp_id
        validates :magp_id, presence: true, type: Integer

        # @return [String] VLAN Interface name.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] MAGP state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] MAGP router IP address.
        attribute :router_ip
        validates :router_ip, type: String

        # @return [String, nil] MAGP router MAC address.
        attribute :router_mac
        validates :router_mac, type: String
      end
    end
  end
end

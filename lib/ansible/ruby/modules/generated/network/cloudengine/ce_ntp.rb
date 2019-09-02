# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages core NTP configuration on HUAWEI CloudEngine switches.
      class Ce_ntp < Base
        # @return [Object, nil] Network address of NTP server.
        attribute :server

        # @return [Object, nil] Network address of NTP peer.
        attribute :peer

        # @return [Object, nil] Authentication key identifier to use with given NTP server or peer.
        attribute :key_id

        # @return [:enable, :disable, nil] Makes given NTP server or peer the preferred NTP server or peer for the device.
        attribute :is_preferred
        validates :is_preferred, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [String, nil] Makes the device communicate with the given NTP server or peer over a specific vpn.
        attribute :vpn_name
        validates :vpn_name, type: String

        # @return [Object, nil] Local source interface from which NTP messages are sent. Must be fully qualified interface name, i.e. C(40GE1/0/22), C(vlanif10). Interface types, such as C(10GE), C(40GE), C(100GE), C(Eth-Trunk), C(LoopBack), C(MEth), C(NULL), C(Tunnel), C(Vlanif).
        attribute :source_int

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

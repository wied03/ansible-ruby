# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages core NTP configuration.
      class Nxos_ntp < Base
        # @return [String, nil] Network address of NTP server.
        attribute :server
        validates :server, type: String

        # @return [Object, nil] Network address of NTP peer.
        attribute :peer

        # @return [Integer, nil] Authentication key identifier to use with given NTP server or peer.
        attribute :key_id
        validates :key_id, type: Integer

        # @return [:enabled, :disabled, nil] Makes given NTP server or peer the preferred NTP server or peer for the device.
        attribute :prefer
        validates :prefer, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Makes the device communicate with the given NTP server or peer over a specific VRF.
        attribute :vrf_name

        # @return [Object, nil] Local source address from which NTP messages are sent.
        attribute :source_addr

        # @return [Object, nil] Local source interface from which NTP messages are sent. Must be fully qualified interface name.
        attribute :source_int

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

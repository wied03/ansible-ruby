# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global VPC configuration
      class Nxos_vpc < Base
        # @return [Integer] VPC domain
        attribute :domain
        validates :domain, presence: true, type: Integer

        # @return [Integer, nil] Role priority for device. Remember lower is better.
        attribute :role_priority
        validates :role_priority, type: Integer

        # @return [Integer, nil] System priority device.  Remember they must match between peers.
        attribute :system_priority
        validates :system_priority, type: Integer

        # @return [String, nil] Source IP address used for peer keepalive link
        attribute :pkl_src
        validates :pkl_src, type: String

        # @return [String, nil] Destination (remote) IP address used for peer keepalive link
        attribute :pkl_dest
        validates :pkl_dest, type: String

        # @return [String, nil] VRF used for peer keepalive link
        attribute :pkl_vrf
        validates :pkl_vrf, type: String

        # @return [:true, :false] Enables/Disables peer gateway
        attribute :peer_gw
        validates :peer_gw, presence: true, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}

        # @return [:true, :false] Enables/Disables auto recovery
        attribute :auto_recovery
        validates :auto_recovery, presence: true, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}

        # @return [Object, nil] manages delay restore command and config value in seconds
        attribute :delay_restore

        # @return [:present, :absent] Manages desired state of the resource
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end

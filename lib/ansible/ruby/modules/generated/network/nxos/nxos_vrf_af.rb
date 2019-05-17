# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VRF AF
      class Nxos_vrf_af < Base
        # @return [String] Name of the VRF.
        attribute :vrf
        validates :vrf, presence: true, type: String

        # @return [:ipv4, :ipv6] Address-Family Identifier (AFI).
        attribute :afi
        validates :afi, presence: true, inclusion: {:in=>[:ipv4, :ipv6], :message=>"%{value} needs to be :ipv4, :ipv6"}

        # @return [:unicast, :multicast] Sub Address-Family Identifier (SAFI).,Deprecated in 2.4
        attribute :safi
        validates :safi, presence: true, inclusion: {:in=>[:unicast, :multicast], :message=>"%{value} needs to be :unicast, :multicast"}

        # @return [Symbol, nil] Enable/Disable the EVPN route-target 'auto' setting for both import and export target communities.
        attribute :route_target_both_auto_evpn
        validates :route_target_both_auto_evpn, type: Symbol

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

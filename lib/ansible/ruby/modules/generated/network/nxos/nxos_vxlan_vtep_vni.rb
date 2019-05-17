# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates a Virtual Network Identifier member (VNI) for an NVE overlay interface.
      class Nxos_vxlan_vtep_vni < Base
        # @return [String] Interface name for the VXLAN Network Virtualization Endpoint.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [Integer] ID of the Virtual Network Identifier.
        attribute :vni
        validates :vni, presence: true, type: Integer

        # @return [Symbol, nil] This attribute is used to identify and separate processing VNIs that are associated with a VRF and used for routing. The VRF and VNI specified with this command must match the configuration of the VNI under the VRF.
        attribute :assoc_vrf
        validates :assoc_vrf, type: Symbol

        # @return [:bgp, :static, :default, nil] Specifies mechanism for host reachability advertisement.
        attribute :ingress_replication
        validates :ingress_replication, inclusion: {:in=>[:bgp, :static, :default], :message=>"%{value} needs to be :bgp, :static, :default"}, allow_nil: true

        # @return [Object, nil] The multicast group (range) of the VNI. Valid values are string and keyword 'default'.
        attribute :multicast_group

        # @return [Object, nil] Set the ingress-replication static peer list. Valid values are an array, a space-separated string of ip addresses, or the keyword 'default'.
        attribute :peer_list

        # @return [Symbol, nil] Suppress arp under layer 2 VNI.
        attribute :suppress_arp
        validates :suppress_arp, type: Symbol

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

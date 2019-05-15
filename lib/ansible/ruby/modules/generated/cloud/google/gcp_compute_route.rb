# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a Route resource.
      # A route is a rule that specifies how certain packets should be handled by the virtual network. Routes are associated with virtual machines by tag, and the set of routes for a particular virtual machine is called its routing table. For each packet leaving a virtual machine, the system searches that virtual machine's routing table for a single best matching route.
      # Routes match packets by destination IP address, preferring smaller or more specific ranges over larger ones. If there is a tie, the system selects the route with the smallest priority value. If there is still a tie, it uses the layer three and four packet headers to select just one of the remaining matching routes. The packet is then forwarded as specified by the next_hop field of the winning route -- either to another virtual machine destination, a virtual machine gateway or a Compute Engine-operated gateway. Packets that do not match any route in the sending virtual machine's routing table will be dropped.
      # A Route resource must have exactly one specification of either nextHopGateway, nextHopInstance, nextHopIp, or nextHopVpnTunnel.
      class Gcp_compute_route < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The destination range of outgoing packets that this route applies to.,Only IPv4 is supported.
        attribute :dest_range
        validates :dest_range, presence: true, type: String

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.  Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The network that this route applies to.
        attribute :network
        validates :network, presence: true, type: String

        # @return [Object, nil] The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length.,In the case of two routes with equal prefix length, the one with the lowest-numbered priority value wins.,Default value is 1000. Valid range is 0 through 65535.
        attribute :priority

        # @return [Array<String>, String, nil] A list of instance tags to which this route applies.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [String, nil] URL to a gateway that should handle matching packets.,Currently, you can only specify the internet gateway, using a full or partial valid URL:  * U(https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway) * projects/project/global/gateways/default-internet-gateway * global/gateways/default-internet-gateway .
        attribute :next_hop_gateway
        validates :next_hop_gateway, type: String

        # @return [Object, nil] URL to an instance that should handle matching packets.,You can specify this as a full or partial URL. For example:  * U(https://www.googleapis.com/compute/v1/projects/project/zones/zone/) instances/instance * projects/project/zones/zone/instances/instance * zones/zone/instances/instance .
        attribute :next_hop_instance

        # @return [Object, nil] Network IP address of an instance that should handle matching packets.
        attribute :next_hop_ip

        # @return [Object, nil] URL to a VpnTunnel that should handle matching packets.
        attribute :next_hop_vpn_tunnel
      end
    end
  end
end

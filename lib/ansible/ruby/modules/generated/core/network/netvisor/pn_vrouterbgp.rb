# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-bgp-add, vrouter-bgp-remove, vrouter-bgp-modify command.
      # Each fabric, cluster, standalone switch, or virtual network (VNET) can provide its tenants with a vRouter service that forwards traffic between networks and implements Layer 4 protocols.
      class Pn_vrouterbgp < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to add bgp, 'absent' to remove bgp and 'update' to modify bgp.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] Specify a name for the vRouter service.
        attribute :pn_vrouter_name
        validates :pn_vrouter_name, presence: true, type: String

        # @return [String, nil] Specify a neighbor IP address to use for BGP.,Required for vrouter-bgp-add.
        attribute :pn_neighbor
        validates :pn_neighbor, type: String

        # @return [Integer, nil] Specify the remote Autonomous System(AS) number. This value is between 1 and 4294967295.,Required for vrouter-bgp-add.
        attribute :pn_remote_as
        validates :pn_remote_as, type: Integer

        # @return [Object, nil] Specify if the next-hop is the same router or not.
        attribute :pn_next_hop_self

        # @return [Object, nil] Specify a password, if desired.
        attribute :pn_password

        # @return [Object, nil] Specify a value for external BGP to accept or attempt BGP connections to external peers, not directly connected, on the network. This is a value between 1 and 255.
        attribute :pn_ebgp

        # @return [Object, nil] Specify the prefix list to filter traffic inbound.
        attribute :pn_prefix_listin

        # @return [Object, nil] Specify the prefix list to filter traffic outbound.
        attribute :pn_prefix_listout

        # @return [Object, nil] Specify if a route reflector client is used.
        attribute :pn_route_reflector

        # @return [Object, nil] Specify if you want to override capability.
        attribute :pn_override_capability

        # @return [Object, nil] Specify if you want a soft reconfiguration of inbound traffic.
        attribute :pn_soft_reconfig

        # @return [Object, nil] Specify the maximum number of prefixes.
        attribute :pn_max_prefix

        # @return [Object, nil] Specify if you want a warning message when the maximum number of prefixes is exceeded.
        attribute :pn_max_prefix_warn

        # @return [Object, nil] Specify if you want BFD protocol support for fault detection.
        attribute :pn_bfd

        # @return [:"ipv4-unicast", :"ipv6-unicast", nil] Specify a multi-protocol for BGP.
        attribute :pn_multiprotocol
        validates :pn_multiprotocol, inclusion: {:in=>[:"ipv4-unicast", :"ipv6-unicast"], :message=>"%{value} needs to be :\"ipv4-unicast\", :\"ipv6-unicast\""}, allow_nil: true

        # @return [Object, nil] Specify a default weight value between 0 and 65535 for the neighbor routes.
        attribute :pn_weight

        # @return [Object, nil] Specify if you want announce default routes to the neighbor or not.
        attribute :pn_default_originate

        # @return [Object, nil] Specify BGP neighbor keepalive interval in seconds.
        attribute :pn_keepalive

        # @return [Object, nil] Specify BGP neighbor holdtime in seconds.
        attribute :pn_holdtime

        # @return [Object, nil] Specify inbound route map for neighbor.
        attribute :pn_route_mapin

        # @return [Object, nil] Specify outbound route map for neighbor.
        attribute :pn_route_mapout
      end
    end
  end
end

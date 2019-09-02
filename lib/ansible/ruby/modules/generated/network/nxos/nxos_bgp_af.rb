# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP Address-family configurations on NX-OS switches.
      class Nxos_bgp_af < Base
        # @return [Integer] BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.
        attribute :asn
        validates :asn, presence: true, type: Integer

        # @return [String] Name of the VRF. The name 'default' is a valid VRF representing the global bgp.
        attribute :vrf
        validates :vrf, presence: true, type: String

        # @return [:ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn] Address Family Identifier.
        attribute :afi
        validates :afi, presence: true, expression_inclusion: {:in=>[:ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn], :message=>"%{value} needs to be :ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn"}

        # @return [:unicast, :multicast, :evpn] Sub Address Family Identifier.
        attribute :safi
        validates :safi, presence: true, expression_inclusion: {:in=>[:unicast, :multicast, :evpn], :message=>"%{value} needs to be :unicast, :multicast, :evpn"}

        # @return [Symbol, nil] Install a backup path into the forwarding table and provide prefix independent convergence (PIC) in case of a PE-CE link failure.
        attribute :additional_paths_install
        validates :additional_paths_install, type: Symbol

        # @return [Symbol, nil] Enables the receive capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.
        attribute :additional_paths_receive
        validates :additional_paths_receive, type: Symbol

        # @return [Object, nil] Configures the capability of selecting additional paths for a prefix. Valid values are a string defining the name of the route-map.
        attribute :additional_paths_selection

        # @return [Symbol, nil] Enables the send capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.
        attribute :additional_paths_send
        validates :additional_paths_send, type: Symbol

        # @return [Symbol, nil] Advertise evpn routes.
        attribute :advertise_l2vpn_evpn
        validates :advertise_l2vpn_evpn, type: Symbol

        # @return [Symbol, nil] Configure client-to-client route reflection.
        attribute :client_to_client
        validates :client_to_client, type: Symbol

        # @return [Object, nil] Specify dampen value for IGP metric-related changes, in seconds. Valid values are integer and keyword 'default'.
        attribute :dampen_igp_metric

        # @return [Symbol, nil] Enable/disable route-flap dampening.
        attribute :dampening_state
        validates :dampening_state, type: Symbol

        # @return [Object, nil] Specify decay half-life in minutes for route-flap dampening. Valid values are integer and keyword 'default'.
        attribute :dampening_half_time

        # @return [Object, nil] Specify max suppress time for route-flap dampening stable route. Valid values are integer and keyword 'default'.
        attribute :dampening_max_suppress_time

        # @return [Object, nil] Specify route reuse time for route-flap dampening. Valid values are integer and keyword 'default'.
        attribute :dampening_reuse_time

        # @return [Object, nil] Specify route-map for route-flap dampening. Valid values are a string defining the name of the route-map.
        attribute :dampening_routemap

        # @return [Object, nil] Specify route suppress time for route-flap dampening. Valid values are integer and keyword 'default'.
        attribute :dampening_suppress_time

        # @return [Symbol, nil] Default information originate.
        attribute :default_information_originate
        validates :default_information_originate, type: Symbol

        # @return [Object, nil] Sets default metrics for routes redistributed into BGP. Valid values are Integer or keyword 'default'
        attribute :default_metric

        # @return [Object, nil] Sets the administrative distance for eBGP routes. Valid values are Integer or keyword 'default'.
        attribute :distance_ebgp

        # @return [Object, nil] Sets the administrative distance for iBGP routes. Valid values are Integer or keyword 'default'.
        attribute :distance_ibgp

        # @return [Object, nil] Sets the administrative distance for local BGP routes. Valid values are Integer or keyword 'default'.
        attribute :distance_local

        # @return [Object, nil] An array of route-map names which will specify prefixes to inject. Each array entry must first specify the inject-map name, secondly an exist-map name, and optionally the copy-attributes keyword which indicates that attributes should be copied from the aggregate. For example [['lax_inject_map', 'lax_exist_map'], ['nyc_inject_map', 'nyc_exist_map', 'copy-attributes'], ['fsd_inject_map', 'fsd_exist_map']].
        attribute :inject_map

        # @return [Object, nil] Configures the maximum number of equal-cost paths for load sharing. Valid value is an integer in the range 1-64.
        attribute :maximum_paths

        # @return [Object, nil] Configures the maximum number of ibgp equal-cost paths for load sharing. Valid value is an integer in the range 1-64.
        attribute :maximum_paths_ibgp

        # @return [Object, nil] Networks to configure. Valid value is a list of network prefixes to advertise. The list must be in the form of an array. Each entry in the array must include a prefix address and an optional route-map. For example [['10.0.0.0/16', 'routemap_LA'], ['192.168.1.1', 'Chicago'], ['192.168.2.0/24'], ['192.168.3.0/24', 'routemap_NYC']].
        attribute :networks

        # @return [Object, nil] Configure a route-map for valid nexthops. Valid values are a string defining the name of the route-map.
        attribute :next_hop_route_map

        # @return [Object, nil] A list of redistribute directives. Multiple redistribute entries are allowed. The list must be in the form of a nested array. the first entry of each array defines the source-protocol to redistribute from; the second entry defines a route-map name. A route-map is highly advised but may be optional on some platforms, in which case it may be omitted from the array list. For example [['direct', 'rm_direct'], ['lisp', 'rm_lisp']].
        attribute :redistribute

        # @return [Symbol, nil] Advertises only active routes to peers.
        attribute :suppress_inactive
        validates :suppress_inactive, type: Symbol

        # @return [Object, nil] Apply table-map to filter routes downloaded into URIB. Valid values are a string.
        attribute :table_map

        # @return [Symbol, nil] Filters routes rejected by the route-map and does not download them to the RIB.
        attribute :table_map_filter
        validates :table_map_filter, type: Symbol

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

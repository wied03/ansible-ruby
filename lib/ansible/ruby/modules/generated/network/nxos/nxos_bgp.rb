# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP configurations on NX-OS switches.
      class Nxos_bgp < Base
        # @return [Integer] BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.
        attribute :asn
        validates :asn, presence: true, type: Integer

        # @return [String, nil] Name of the VRF. The name 'default' is a valid VRF representing the global BGP.
        attribute :vrf
        validates :vrf, type: String

        # @return [Object, nil] Enable/Disable MED comparison on paths from different autonomous systems.
        attribute :bestpath_always_compare_med

        # @return [Object, nil] Enable/Disable load sharing across the providers with different (but equal-length) AS paths.
        attribute :bestpath_aspath_multipath_relax

        # @return [Object, nil] Enable/Disable comparison of router IDs for identical eBGP paths.
        attribute :bestpath_compare_routerid

        # @return [Object, nil] Enable/Disable neighborid. Use this when more paths available than max path config.
        attribute :bestpath_compare_neighborid

        # @return [Object, nil] Enable/Disable Ignores the cost community for BGP best-path calculations.
        attribute :bestpath_cost_community_ignore

        # @return [Object, nil] Enable/Disable enforcement of bestpath to do a MED comparison only between paths originated within a confederation.
        attribute :bestpath_med_confed

        # @return [Object, nil] Enable/Disable assigns the value of infinity to received routes that do not carry the MED attribute, making these routes the least desirable.
        attribute :bestpath_med_missing_as_worst

        # @return [Object, nil] Enable/Disable deterministic selection of the best MED pat from among the paths from the same autonomous system.
        attribute :bestpath_med_non_deterministic

        # @return [Object, nil] Route Reflector Cluster-ID.
        attribute :cluster_id

        # @return [Object, nil] Routing domain confederation AS.
        attribute :confederation_id

        # @return [Object, nil] AS confederation parameters.
        attribute :confederation_peers

        # @return [Object, nil] Enable/Disable the batching evaluation of prefix advertisement to all peers.
        attribute :disable_policy_batching

        # @return [Object, nil] Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.
        attribute :disable_policy_batching_ipv4_prefix_list

        # @return [Object, nil] Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.
        attribute :disable_policy_batching_ipv6_prefix_list

        # @return [Object, nil] Enable/Disable enforces the neighbor autonomous system to be the first AS number listed in the AS path attribute for eBGP. On NX-OS, this property is only supported in the global BGP context.
        attribute :enforce_first_as

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable cli event history buffer.
        attribute :event_history_cli
        validates :event_history_cli, inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable detail event history buffer.
        attribute :event_history_detail
        validates :event_history_detail, inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable event history buffer.
        attribute :event_history_events
        validates :event_history_events, inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable periodic event history buffer.
        attribute :event_history_periodic
        validates :event_history_periodic, inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [Object, nil] Enable/Disable immediately reset the session if the link to a directly connected BGP peer goes down.  Only supported in the global BGP context.
        attribute :fast_external_fallover

        # @return [Object, nil] Enable/Disable flush routes in RIB upon controlled restart. On NX-OS, this property is only supported in the global BGP context.
        attribute :flush_routes

        # @return [Object, nil] Enable/Disable graceful restart.
        attribute :graceful_restart

        # @return [Object, nil] Enable/Disable graceful restart helper mode.
        attribute :graceful_restart_helper

        # @return [Object, nil] Set maximum time for a restart sent to the BGP peer.
        attribute :graceful_restart_timers_restart

        # @return [Object, nil] Set maximum time that BGP keeps the stale routes from the restarting BGP peer.
        attribute :graceful_restart_timers_stalepath_time

        # @return [Object, nil] Enable/Disable isolate this router from BGP perspective.
        attribute :isolate

        # @return [Object, nil] Local AS number to be used within a VRF instance.
        attribute :local_as

        # @return [Object, nil] Enable/Disable message logging for neighbor up/down event.
        attribute :log_neighbor_changes

        # @return [Object, nil] Specify Maximum number of AS numbers allowed in the AS-path attribute. Valid values are between 1 and 512.
        attribute :maxas_limit

        # @return [Object, nil] Enable/Disable handle BGP neighbor down event, due to various reasons.
        attribute :neighbor_down_fib_accelerate

        # @return [Object, nil] The BGP reconnection interval for dropped sessions. Valid values are between 1 and 60.
        attribute :reconnect_interval

        # @return [String, nil] Router Identifier (ID) of the BGP router VRF instance.
        attribute :router_id
        validates :router_id, type: String

        # @return [Object, nil] Administratively shutdown the BGP protocol.
        attribute :shutdown

        # @return [Object, nil] Enable/Disable advertise only routes programmed in hardware to peers.
        attribute :suppress_fib_pending

        # @return [Object, nil] Specify timeout for the first best path after a restart, in seconds.
        attribute :timer_bestpath_limit

        # @return [Object, nil] Set BGP hold timer.
        attribute :timer_bgp_hold

        # @return [Object, nil] Set BGP keepalive timer.
        attribute :timer_bgp_keepalive

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

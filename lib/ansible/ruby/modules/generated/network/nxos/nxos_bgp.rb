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

        # @return [Symbol, nil] Enable/Disable MED comparison on paths from different autonomous systems.
        attribute :bestpath_always_compare_med
        validates :bestpath_always_compare_med, type: Symbol

        # @return [Symbol, nil] Enable/Disable load sharing across the providers with different (but equal-length) AS paths.
        attribute :bestpath_aspath_multipath_relax
        validates :bestpath_aspath_multipath_relax, type: Symbol

        # @return [Symbol, nil] Enable/Disable comparison of router IDs for identical eBGP paths.
        attribute :bestpath_compare_routerid
        validates :bestpath_compare_routerid, type: Symbol

        # @return [Symbol, nil] Enable/Disable neighborid. Use this when more paths available than max path config.
        attribute :bestpath_compare_neighborid
        validates :bestpath_compare_neighborid, type: Symbol

        # @return [Symbol, nil] Enable/Disable Ignores the cost community for BGP best-path calculations.
        attribute :bestpath_cost_community_ignore
        validates :bestpath_cost_community_ignore, type: Symbol

        # @return [Symbol, nil] Enable/Disable enforcement of bestpath to do a MED comparison only between paths originated within a confederation.
        attribute :bestpath_med_confed
        validates :bestpath_med_confed, type: Symbol

        # @return [Symbol, nil] Enable/Disable assigns the value of infinity to received routes that do not carry the MED attribute, making these routes the least desirable.
        attribute :bestpath_med_missing_as_worst
        validates :bestpath_med_missing_as_worst, type: Symbol

        # @return [Symbol, nil] Enable/Disable deterministic selection of the best MED pat from among the paths from the same autonomous system.
        attribute :bestpath_med_non_deterministic
        validates :bestpath_med_non_deterministic, type: Symbol

        # @return [Object, nil] Route Reflector Cluster-ID.
        attribute :cluster_id

        # @return [Object, nil] Routing domain confederation AS.
        attribute :confederation_id

        # @return [Object, nil] AS confederation parameters.
        attribute :confederation_peers

        # @return [Symbol, nil] Enable/Disable the batching evaluation of prefix advertisement to all peers.
        attribute :disable_policy_batching
        validates :disable_policy_batching, type: Symbol

        # @return [Object, nil] Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.
        attribute :disable_policy_batching_ipv4_prefix_list

        # @return [Object, nil] Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.
        attribute :disable_policy_batching_ipv6_prefix_list

        # @return [Symbol, nil] Enable/Disable enforces the neighbor autonomous system to be the first AS number listed in the AS path attribute for eBGP. On NX-OS, this property is only supported in the global BGP context.
        attribute :enforce_first_as
        validates :enforce_first_as, type: Symbol

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable cli event history buffer.
        attribute :event_history_cli
        validates :event_history_cli, expression_inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable detail event history buffer.
        attribute :event_history_detail
        validates :event_history_detail, expression_inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable event history buffer.
        attribute :event_history_events
        validates :event_history_events, expression_inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [:size_small, :size_medium, :size_large, :size_disable, :default, nil] Enable/Disable periodic event history buffer.
        attribute :event_history_periodic
        validates :event_history_periodic, expression_inclusion: {:in=>[:size_small, :size_medium, :size_large, :size_disable, :default], :message=>"%{value} needs to be :size_small, :size_medium, :size_large, :size_disable, :default"}, allow_nil: true

        # @return [Symbol, nil] Enable/Disable immediately reset the session if the link to a directly connected BGP peer goes down.  Only supported in the global BGP context.
        attribute :fast_external_fallover
        validates :fast_external_fallover, type: Symbol

        # @return [Symbol, nil] Enable/Disable flush routes in RIB upon controlled restart. On NX-OS, this property is only supported in the global BGP context.
        attribute :flush_routes
        validates :flush_routes, type: Symbol

        # @return [Symbol, nil] Enable/Disable graceful restart.
        attribute :graceful_restart
        validates :graceful_restart, type: Symbol

        # @return [Symbol, nil] Enable/Disable graceful restart helper mode.
        attribute :graceful_restart_helper
        validates :graceful_restart_helper, type: Symbol

        # @return [Object, nil] Set maximum time for a restart sent to the BGP peer.
        attribute :graceful_restart_timers_restart

        # @return [Object, nil] Set maximum time that BGP keeps the stale routes from the restarting BGP peer.
        attribute :graceful_restart_timers_stalepath_time

        # @return [Symbol, nil] Enable/Disable isolate this router from BGP perspective.
        attribute :isolate
        validates :isolate, type: Symbol

        # @return [Object, nil] Local AS number to be used within a VRF instance.
        attribute :local_as

        # @return [Symbol, nil] Enable/Disable message logging for neighbor up/down event.
        attribute :log_neighbor_changes
        validates :log_neighbor_changes, type: Symbol

        # @return [Object, nil] Specify Maximum number of AS numbers allowed in the AS-path attribute. Valid values are between 1 and 512.
        attribute :maxas_limit

        # @return [Symbol, nil] Enable/Disable handle BGP neighbor down event, due to various reasons.
        attribute :neighbor_down_fib_accelerate
        validates :neighbor_down_fib_accelerate, type: Symbol

        # @return [Object, nil] The BGP reconnection interval for dropped sessions. Valid values are between 1 and 60.
        attribute :reconnect_interval

        # @return [String, nil] Router Identifier (ID) of the BGP router VRF instance.
        attribute :router_id
        validates :router_id, type: String

        # @return [Symbol, nil] Administratively shutdown the BGP protocol.
        attribute :shutdown
        validates :shutdown, type: Symbol

        # @return [Symbol, nil] Enable/Disable advertise only routes programmed in hardware to peers.
        attribute :suppress_fib_pending
        validates :suppress_fib_pending, type: Symbol

        # @return [Object, nil] Specify timeout for the first best path after a restart, in seconds.
        attribute :timer_bestpath_limit

        # @return [Object, nil] Set BGP hold timer.
        attribute :timer_bgp_hold

        # @return [Object, nil] Set BGP keepalive timer.
        attribute :timer_bgp_keepalive

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

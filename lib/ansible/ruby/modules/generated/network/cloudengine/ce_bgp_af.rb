# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP Address-family configurations on HUAWEI CloudEngine switches.
      class Ce_bgp_af < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created. The value is a string of 1 to 31 case-sensitive characters.
        attribute :vrf_name
        validates :vrf_name, presence: true

        # @return [:ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn] Address family type of a BGP instance.
        attribute :af_type
        validates :af_type, presence: true, expression_inclusion: {:in=>[:ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn], :message=>"%{value} needs to be :ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn"}

        # @return [Object, nil] Specify the maximum number of equal-cost IBGP routes. The value is an integer ranging from 1 to 65535.
        attribute :max_load_ibgp_num

        # @return [:no_use, :true, :false, nil] If the value is true, the next hop of an advertised route is changed to the advertiser itself in IBGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in IBGP load-balancing scenarios.
        attribute :ibgp_ecmp_nexthop_changed
        validates :ibgp_ecmp_nexthop_changed, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the maximum number of equal-cost EBGP routes. The value is an integer ranging from 1 to 65535.
        attribute :max_load_ebgp_num

        # @return [:no_use, :true, :false, nil] If the value is true, the next hop of an advertised route is changed to the advertiser itself in EBGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in EBGP load-balancing scenarios.
        attribute :ebgp_ecmp_nexthop_changed
        validates :ebgp_ecmp_nexthop_changed, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the maximum number of equal-cost routes in the BGP routing table. The value is an integer ranging from 1 to 65535.
        attribute :maximum_load_balance

        # @return [:no_use, :true, :false, nil] If the value is true, the next hop of an advertised route is changed to the advertiser itself in BGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in BGP load-balancing scenarios.
        attribute :ecmp_nexthop_changed
        validates :ecmp_nexthop_changed, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Set the Local-Preference attribute. The value is an integer. The value is an integer ranging from 0 to 4294967295.
        attribute :default_local_pref

        # @return [Object, nil] Specify the Multi-Exit-Discriminator (MED) of BGP routes. The value is an integer ranging from 0 to 4294967295.
        attribute :default_med

        # @return [:no_use, :true, :false, nil] If the value is true, importing default routes to the BGP routing table is allowed. If the value is false, importing default routes to the BGP routing table is not allowed.
        attribute :default_rt_import_enable
        validates :default_rt_import_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] ID of a router that is in IPv4 address format. The value is a string of 0 to 255 characters. The value is in dotted decimal notation.
        attribute :router_id

        # @return [:no_use, :true, :false, nil] If the value is true, VPN BGP instances are enabled to automatically select router IDs. If the value is false, VPN BGP instances are disabled from automatically selecting router IDs.
        attribute :vrf_rid_auto_sel
        validates :vrf_rid_auto_sel, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the third-party next hop function is enabled. If the value is false, the third-party next hop function is disabled.
        attribute :nexthop_third_party
        validates :nexthop_third_party, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, automatic aggregation is enabled for locally imported routes. If the value is false, automatic aggregation is disabled for locally imported routes.
        attribute :summary_automatic
        validates :summary_automatic, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, BGP auto FRR is enabled. If the value is false, BGP auto FRR is disabled.
        attribute :auto_frr_enable
        validates :auto_frr_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Load balancing as path ignore.
        attribute :load_balancing_as_path_ignore
        validates :load_balancing_as_path_ignore, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, BGP routes cannot be advertised to the IP routing table. If the value is false, Routes preferred by BGP are advertised to the IP routing table.
        attribute :rib_only_enable
        validates :rib_only_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the name of a routing policy. The value is a string of 1 to 40 characters.
        attribute :rib_only_policy_name

        # @return [:no_use, :true, :false, nil] If the value is true, BGP is enabled to advertise only optimal routes in the RM to peers. If the value is false, BGP is not enabled to advertise only optimal routes in the RM to peers.
        attribute :active_route_advertise
        validates :active_route_advertise, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the AS path attribute is ignored when BGP selects an optimal route. If the value is false, the AS path attribute is not ignored when BGP selects an optimal route. An AS path with a smaller length has a higher priority.
        attribute :as_path_neglect
        validates :as_path_neglect, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, when BGP selects an optimal route, the system uses 4294967295 as the MED value of a route if the route's attribute does not carry a MED value. If the value is false, the system uses 0 as the MED value of a route if the route's attribute does not carry a MED value.
        attribute :med_none_as_maximum
        validates :med_none_as_maximum, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the router ID attribute is ignored when BGP selects the optimal route. If the value is false, the router ID attribute is not ignored when BGP selects the optimal route.
        attribute :router_id_neglect
        validates :router_id_neglect, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the metrics of next-hop IGP routes are not compared when BGP selects an optimal route. If the value is false, the metrics of next-hop IGP routes are not compared when BGP selects an optimal route. A route with a smaller metric has a higher priority.
        attribute :igp_metric_ignore
        validates :igp_metric_ignore, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the MEDs of routes learned from peers in different autonomous systems are compared when BGP selects an optimal route. If the value is false, the MEDs of routes learned from peers in different autonomous systems are not compared when BGP selects an optimal route.
        attribute :always_compare_med
        validates :always_compare_med, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, BGP deterministic-MED is enabled. If the value is false, BGP deterministic-MED is disabled.
        attribute :determin_med
        validates :determin_med, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Set the protocol priority of EBGP routes. The value is an integer ranging from 1 to 255.
        attribute :preference_external

        # @return [Object, nil] Set the protocol priority of IBGP routes. The value is an integer ranging from 1 to 255.
        attribute :preference_internal

        # @return [Object, nil] Set the protocol priority of a local BGP route. The value is an integer ranging from 1 to 255.
        attribute :preference_local

        # @return [Object, nil] Set a routing policy to filter routes so that a configured priority is applied to the routes that match the specified policy. The value is a string of 1 to 40 characters.
        attribute :prefrence_policy_name

        # @return [:no_use, :true, :false, nil] If the value is true, route reflection is enabled between clients. If the value is false, route reflection is disabled between clients.
        attribute :reflect_between_client
        validates :reflect_between_client, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Set a cluster ID. Configuring multiple RRs in a cluster can enhance the stability of the network. The value is an integer ranging from 1 to 4294967295.
        attribute :reflector_cluster_id

        # @return [Object, nil] Set a cluster ipv4 address. The value is expressed in the format of an IPv4 address.
        attribute :reflector_cluster_ipv4

        # @return [Object, nil] Set the number of the extended community filter supported by an RR group. The value is a string of 1 to 51 characters.
        attribute :rr_filter_number

        # @return [:no_use, :true, :false, nil] If the value is true, VPN-Target filtering function is performed for received VPN routes. If the value is false, VPN-Target filtering function is not performed for received VPN routes.
        attribute :policy_vpn_target
        validates :policy_vpn_target, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:default, :dependTunnel, :dependIp, nil] Next hop select depend type.
        attribute :next_hop_sel_depend_type
        validates :next_hop_sel_depend_type, expression_inclusion: {:in=>[:default, :dependTunnel, :dependIp], :message=>"%{value} needs to be :default, :dependTunnel, :dependIp"}, allow_nil: true

        # @return [Object, nil] Specify the name of a route-policy for route iteration. The value is a string of 1 to 40 characters.
        attribute :nhp_relay_route_policy_name

        # @return [:no_use, :true, :false, nil] If the value is true, after the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are deleted immediately when the interface goes Down. If the value is false, after the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are not deleted immediately when the interface goes Down.
        attribute :ebgp_if_sensitive
        validates :ebgp_if_sensitive, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the route reflector is enabled to modify route path attributes based on an export policy. If the value is false, the route reflector is disabled from modifying route path attributes based on an export policy.
        attribute :reflect_chg_path
        validates :reflect_chg_path, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Number of Add-Path routes. The value is an integer ranging from 2 to 64.
        attribute :add_path_sel_num

        # @return [Object, nil] Route selection delay. The value is an integer ranging from 0 to 3600.
        attribute :route_sel_delay

        # @return [:no_use, :true, :false, nil] Allow routes with BGP origin AS validation result Invalid to be selected. If the value is true, invalid routes can participate in route selection. If the value is false, invalid routes cannot participate in route selection.
        attribute :allow_invalid_as
        validates :allow_invalid_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, modifying extended community attributes is allowed. If the value is false, modifying extended community attributes is not allowed.
        attribute :policy_ext_comm_enable
        validates :policy_ext_comm_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the function to advertise supernetwork unicast routes is enabled. If the value is false, the function to advertise supernetwork unicast routes is disabled.
        attribute :supernet_uni_adv
        validates :supernet_uni_adv, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the function to advertise supernetwork label is enabled. If the value is false, the function to advertise supernetwork label is disabled.
        attribute :supernet_label_adv
        validates :supernet_label_adv, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Ingress lsp policy name.
        attribute :ingress_lsp_policy_name

        # @return [:no_use, :true, :false, nil] Originator prior.
        attribute :originator_prior
        validates :originator_prior, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, enable reduce priority to advertise route. If the value is false, disable reduce priority to advertise route.
        attribute :lowest_priority
        validates :lowest_priority, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, relay delay enable. If the value is false, relay delay disable.
        attribute :relay_delay_enable
        validates :relay_delay_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:direct, :ospf, :isis, :static, :rip, :ospfv3, :ripng, nil] Routing protocol from which routes can be imported.
        attribute :import_protocol
        validates :import_protocol, expression_inclusion: {:in=>[:direct, :ospf, :isis, :static, :rip, :ospfv3, :ripng], :message=>"%{value} needs to be :direct, :ospf, :isis, :static, :rip, :ospfv3, :ripng"}, allow_nil: true

        # @return [Object, nil] Process ID of an imported routing protocol. The value is an integer ranging from 0 to 4294967295.
        attribute :import_process_id

        # @return [Object, nil] Specify the IP address advertised by BGP. The value is a string of 0 to 255 characters.
        attribute :network_address

        # @return [Object, nil] Specify the mask length of an IP address. The value is an integer ranging from 0 to 128.
        attribute :mask_len
      end
    end
  end
end

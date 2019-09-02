# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP neighbor Address-family configurations on HUAWEI CloudEngine switches.
      class Ce_bgp_neighbor_af < Base
        # @return [Object] Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created.
        attribute :vrf_name
        validates :vrf_name, presence: true

        # @return [:ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn] Address family type of a BGP instance.
        attribute :af_type
        validates :af_type, presence: true, expression_inclusion: {:in=>[:ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn], :message=>"%{value} needs to be :ipv4uni, :ipv4multi, :ipv4vpn, :ipv6uni, :ipv6vpn, :evpn"}

        # @return [Object] IPv4 or IPv6 peer connection address.
        attribute :remote_address
        validates :remote_address, presence: true

        # @return [:no_use, :true, :false, nil] If the value is true, advertised IRB routes are distinguished. If the value is false, advertised IRB routes are not distinguished.
        attribute :advertise_irb
        validates :advertise_irb, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, advertised ARP routes are distinguished. If the value is false, advertised ARP routes are not distinguished.
        attribute :advertise_arp
        validates :advertise_arp, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the remote next-hop attribute is advertised to peers. If the value is false, the remote next-hop attribute is not advertised to any peers.
        attribute :advertise_remote_nexthop
        validates :advertise_remote_nexthop, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the community attribute is advertised to peers. If the value is false, the community attribute is not advertised to peers.
        attribute :advertise_community
        validates :advertise_community, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the extended community attribute is advertised to peers. If the value is false, the extended community attribute is not advertised to peers.
        attribute :advertise_ext_community
        validates :advertise_ext_community, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the extended community attribute in the peer route information is discarded. If the value is false, the extended community attribute in the peer route information is not discarded.
        attribute :discard_ext_community
        validates :discard_ext_community, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, repetitive local AS numbers are allowed. If the value is false, repetitive local AS numbers are not allowed.
        attribute :allow_as_loop_enable
        validates :allow_as_loop_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Set the maximum number of repetitive local AS number. The value is an integer ranging from 1 to 10.
        attribute :allow_as_loop_limit

        # @return [:no_use, :true, :false, nil] If the value is true, the system stores all route update messages received from all peers (groups) after BGP connection setup. If the value is false, the system stores only BGP update messages that are received from peers and pass the configured import policy.
        attribute :keep_all_routes
        validates :keep_all_routes, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:null, :local, :invariable, nil] null, The next hop is not changed. local, The next hop is changed to the local IP address. invariable, Prevent the device from changing the next hop of each imported IGP route when advertising it to its BGP peers.
        attribute :nexthop_configure
        validates :nexthop_configure, expression_inclusion: {:in=>[:null, :local, :invariable], :message=>"%{value} needs to be :null, :local, :invariable"}, allow_nil: true

        # @return [Object, nil] Assign a preferred value for the routes learned from a specified peer. The value is an integer ranging from 0 to 65535.
        attribute :preferred_value

        # @return [:no_use, :true, :false, nil] If the value is true, sent BGP update messages carry only the public AS number but do not carry private AS numbers. If the value is false, sent BGP update messages can carry private AS numbers.
        attribute :public_as_only
        validates :public_as_only, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, sent BGP update messages carry only the public AS number but do not carry private AS numbers. If the value is false, sent BGP update messages can carry private AS numbers.
        attribute :public_as_only_force
        validates :public_as_only_force, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Limited use public as number.
        attribute :public_as_only_limited
        validates :public_as_only_limited, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Private as replaced by public as number.
        attribute :public_as_only_replace
        validates :public_as_only_replace, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Public as only skip peer as.
        attribute :public_as_only_skip_peer_as
        validates :public_as_only_skip_peer_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Configure the maximum number of routes that can be accepted from a peer. The value is an integer ranging from 1 to 4294967295.
        attribute :route_limit

        # @return [Object, nil] Specify the percentage of routes when a router starts to generate an alarm. The value is an integer ranging from 1 to 100.
        attribute :route_limit_percent

        # @return [:noparameter, :alertOnly, :idleForever, :idleTimeout, nil] Noparameter, After the number of received routes exceeds the threshold and the timeout timer expires,no action. AlertOnly, An alarm is generated and no additional routes will be accepted if the maximum number of routes allowed have been received. IdleForever, The connection that is interrupted is not automatically re-established if the maximum number of routes allowed have been received. IdleTimeout, After the number of received routes exceeds the threshold and the timeout timer expires, the connection that is interrupted is automatically re-established.
        attribute :route_limit_type
        validates :route_limit_type, expression_inclusion: {:in=>[:noparameter, :alertOnly, :idleForever, :idleTimeout], :message=>"%{value} needs to be :noparameter, :alertOnly, :idleForever, :idleTimeout"}, allow_nil: true

        # @return [Object, nil] Specify the value of the idle-timeout timer to automatically reestablish the connections after they are cut off when the number of routes exceeds the set threshold. The value is an integer ranging from 1 to 1200.
        attribute :route_limit_idle_timeout

        # @return [Object, nil] Specify the minimum interval at which Update packets are sent. The value is an integer, in seconds. The value is an integer ranging from 0 to 600.
        attribute :rt_updt_interval

        # @return [:no_use, :true, :false, nil] Redirect ip.
        attribute :redirect_ip
        validates :redirect_ip, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Redirect ip vaildation.
        attribute :redirect_ip_vaildation
        validates :redirect_ip_vaildation, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the local device functions as the route reflector and a peer functions as a client of the route reflector. If the value is false, the route reflector and client functions are not configured.
        attribute :reflect_client
        validates :reflect_client, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the function to replace a specified peer's AS number in the AS-Path attribute with the local AS number is enabled. If the value is false, the function to replace a specified peer's AS number in the AS-Path attribute with the local AS number is disabled.
        attribute :substitute_as_enable
        validates :substitute_as_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the filtering policy applied to the routes learned from a peer. The value is a string of 1 to 40 characters.
        attribute :import_rt_policy_name

        # @return [Object, nil] Specify the filtering policy applied to the routes to be advertised to a peer. The value is a string of 1 to 40 characters.
        attribute :export_rt_policy_name

        # @return [Object, nil] Specify the IPv4 filtering policy applied to the routes received from a specified peer. The value is a string of 1 to 169 characters.
        attribute :import_pref_filt_name

        # @return [Object, nil] Specify the IPv4 filtering policy applied to the routes to be advertised to a specified peer. The value is a string of 1 to 169 characters.
        attribute :export_pref_filt_name

        # @return [Object, nil] Apply an AS_Path-based filtering policy to the routes received from a specified peer. The value is an integer ranging from 1 to 256.
        attribute :import_as_path_filter

        # @return [Object, nil] Apply an AS_Path-based filtering policy to the routes to be advertised to a specified peer. The value is an integer ranging from 1 to 256.
        attribute :export_as_path_filter

        # @return [Object, nil] A routing strategy based on the AS path list for routing received by a designated peer.
        attribute :import_as_path_name_or_num

        # @return [Object, nil] Application of a AS path list based filtering policy to the routing of a specified peer.
        attribute :export_as_path_name_or_num

        # @return [Object, nil] Apply an IPv4 ACL-based filtering policy to the routes received from a specified peer. The value is a string of 1 to 32 characters.
        attribute :import_acl_name_or_num

        # @return [Object, nil] Apply an IPv4 ACL-based filtering policy to the routes to be advertised to a specified peer. The value is a string of 1 to 32 characters.
        attribute :export_acl_name_or_num

        # @return [:no_use, :true, :false, nil] If the value is true, the address prefix-based Outbound Route Filter (ORF) capability is enabled for peers. If the value is false, the address prefix-based Outbound Route Filter (ORF) capability is disabled for peers.
        attribute :ipprefix_orf_enable
        validates :ipprefix_orf_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, Non-standard capability codes are used during capability negotiation. If the value is false, RFC-defined standard ORF capability codes are used during capability negotiation.
        attribute :is_nonstd_ipprefix_mod
        validates :is_nonstd_ipprefix_mod, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] ORF Type. The value is an integer ranging from 0 to 65535.
        attribute :orftype

        # @return [:null, :receive, :send, :both, nil] ORF mode. null, Default value. receive, ORF for incoming packets. send, ORF for outgoing packets. both, ORF for incoming and outgoing packets.
        attribute :orf_mode
        validates :orf_mode, expression_inclusion: {:in=>[:null, :receive, :send, :both], :message=>"%{value} needs to be :null, :receive, :send, :both"}, allow_nil: true

        # @return [Object, nil] Configure the Site-of-Origin (SoO) extended community attribute. The value is a string of 3 to 21 characters.
        attribute :soostring

        # @return [:no_use, :true, :false, nil] If the value is true, the function to advertise default routes to peers is enabled. If the value is false, the function to advertise default routes to peers is disabled.
        attribute :default_rt_adv_enable
        validates :default_rt_adv_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the name of a used policy. The value is a string. The value is a string of 1 to 40 characters.
        attribute :default_rt_adv_policy

        # @return [:null, :matchall, :matchany, nil] null, Null. matchall, Advertise the default route if all matching conditions are met. matchany, Advertise the default route if any matching condition is met.
        attribute :default_rt_match_mode
        validates :default_rt_match_mode, expression_inclusion: {:in=>[:null, :matchall, :matchany], :message=>"%{value} needs to be :null, :matchall, :matchany"}, allow_nil: true

        # @return [:null, :receive, :send, :both, nil] null, Null. receive, Support receiving Add-Path routes. send, Support sending Add-Path routes. both, Support receiving and sending Add-Path routes.
        attribute :add_path_mode
        validates :add_path_mode, expression_inclusion: {:in=>[:null, :receive, :send, :both], :message=>"%{value} needs to be :null, :receive, :send, :both"}, allow_nil: true

        # @return [Object, nil] The number of addPath advertise route. The value is an integer ranging from 2 to 64.
        attribute :adv_add_path_num

        # @return [:no_use, :true, :false, nil] If the value is true, Application results of route announcement. If the value is false, Routing application results are not notified.
        attribute :origin_as_valid
        validates :origin_as_valid, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, vpls enable. If the value is false, vpls disable.
        attribute :vpls_enable
        validates :vpls_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, enable vpls-ad. If the value is false, disable vpls-ad.
        attribute :vpls_ad_disable
        validates :vpls_ad_disable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, When the vpnv4 multicast neighbor receives and updates the message, the message has no label. If the value is false, When the vpnv4 multicast neighbor receives and updates the message, the message has label.
        attribute :update_pkt_standard_compatible
        validates :update_pkt_standard_compatible, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true
      end
    end
  end
end

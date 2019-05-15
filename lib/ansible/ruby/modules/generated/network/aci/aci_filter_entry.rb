# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage filter entries for a filter on Cisco ACI fabrics.
      class Aci_filter_entry < Base
        # @return [:arp_reply, :arp_request, :unspecified, nil] The arp flag to use when the ether_type is arp.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :arp_flag
        validates :arp_flag, inclusion: {:in=>[:arp_reply, :arp_request, :unspecified], :message=>"%{value} needs to be :arp_reply, :arp_request, :unspecified"}, allow_nil: true

        # @return [Object, nil] Description for the Filter Entry.
        attribute :description

        # @return [Object, nil] Used to set both destination start and end ports to the same value when ip_protocol is tcp or udp.,Accepted values are any valid TCP/UDP port range.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dst_port

        # @return [Object, nil] Used to set the destination end port when ip_protocol is tcp or udp.,Accepted values are any valid TCP/UDP port range.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dst_port_end

        # @return [Object, nil] Used to set the destination start port when ip_protocol is tcp or udp.,Accepted values are any valid TCP/UDP port range.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dst_port_start

        # @return [String, nil] Then name of the Filter Entry.
        attribute :entry
        validates :entry, type: String

        # @return [:arp, :fcoe, :ip, :mac_security, :mpls_ucast, :trill, :unspecified, nil] The Ethernet type.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :ether_type
        validates :ether_type, inclusion: {:in=>[:arp, :fcoe, :ip, :mac_security, :mpls_ucast, :trill, :unspecified], :message=>"%{value} needs to be :arp, :fcoe, :ip, :mac_security, :mpls_ucast, :trill, :unspecified"}, allow_nil: true

        # @return [String, nil] The name of Filter that the entry should belong to.
        attribute :filter
        validates :filter, type: String

        # @return [:dst_unreachable, :echo, :echo_reply, :src_quench, :time_exceeded, :unspecified, nil] ICMPv4 message type; used when ip_protocol is icmp.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :icmp_msg_type
        validates :icmp_msg_type, inclusion: {:in=>[:dst_unreachable, :echo, :echo_reply, :src_quench, :time_exceeded, :unspecified], :message=>"%{value} needs to be :dst_unreachable, :echo, :echo_reply, :src_quench, :time_exceeded, :unspecified"}, allow_nil: true

        # @return [:dst_unreachable, :echo_request, :echo_reply, :neighbor_advertisement, :neighbor_solicitation, :redirect, :time_exceeded, :unspecified, nil] ICMPv6 message type; used when ip_protocol is icmpv6.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :icmp6_msg_type
        validates :icmp6_msg_type, inclusion: {:in=>[:dst_unreachable, :echo_request, :echo_reply, :neighbor_advertisement, :neighbor_solicitation, :redirect, :time_exceeded, :unspecified], :message=>"%{value} needs to be :dst_unreachable, :echo_request, :echo_reply, :neighbor_advertisement, :neighbor_solicitation, :redirect, :time_exceeded, :unspecified"}, allow_nil: true

        # @return [:eigrp, :egp, :icmp, :icmpv6, :igmp, :igp, :l2tp, :ospfigp, :pim, :tcp, :udp, :unspecified, nil] The IP Protocol type when ether_type is ip.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :ip_protocol
        validates :ip_protocol, inclusion: {:in=>[:eigrp, :egp, :icmp, :icmpv6, :igmp, :igp, :l2tp, :ospfigp, :pim, :tcp, :udp, :unspecified], :message=>"%{value} needs to be :eigrp, :egp, :icmp, :icmpv6, :igmp, :igp, :l2tp, :ospfigp, :pim, :tcp, :udp, :unspecified"}, allow_nil: true

        # @return [:absent, :present, :query, nil] present, absent, query
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [Object, nil] Determines the statefulness of the filter entry.
        attribute :stateful

        # @return [String, nil] The name of the tenant.
        attribute :tenant
        validates :tenant, type: String
      end
    end
  end
end

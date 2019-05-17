# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Bridge Domains (BD) on Cisco ACI fabrics.
      class Aci_bd < Base
        # @return [Symbol, nil] Determines if the Bridge Domain should flood ARP traffic.,The APIC defaults to C(no) when unset during creation.
        attribute :arp_flooding
        validates :arp_flooding, type: Symbol

        # @return [String, nil] The name of the Bridge Domain.
        attribute :bd
        validates :bd, type: String

        # @return [:ethernet, :fc, nil] The type of traffic on the Bridge Domain.,The APIC defaults to C(ethernet) when unset during creation.
        attribute :bd_type
        validates :bd_type, inclusion: {:in=>[:ethernet, :fc], :message=>"%{value} needs to be :ethernet, :fc"}, allow_nil: true

        # @return [Object, nil] Description for the Bridge Domain.
        attribute :description

        # @return [Symbol, nil] Determines if PIM is enabled.,The APIC defaults to C(no) when unset during creation.
        attribute :enable_multicast
        validates :enable_multicast, type: Symbol

        # @return [Symbol, nil] Determines if IP forwarding should be allowed.,The APIC defaults to C(yes) when unset during creation.
        attribute :enable_routing
        validates :enable_routing, type: Symbol

        # @return [Symbol, nil] Clears all End Points in all Leaves when C(yes).,The value is not reset to disabled once End Points have been cleared; that requires a second task.,The APIC defaults to C(no) when unset during creation.
        attribute :endpoint_clear
        validates :endpoint_clear, type: Symbol

        # @return [:default, :garp, nil] Determines if GARP should be enabled to detect when End Points move.,The APIC defaults to C(garp) when unset during creation.
        attribute :endpoint_move_detect
        validates :endpoint_move_detect, inclusion: {:in=>[:default, :garp], :message=>"%{value} needs to be :default, :garp"}, allow_nil: true

        # @return [:inherit, :resolve, nil] Determines if the Bridge Domain should inherit or resolve the End Point Retention Policy.,The APIC defaults to C(resolve) when unset during creation.
        attribute :endpoint_retention_action
        validates :endpoint_retention_action, inclusion: {:in=>[:inherit, :resolve], :message=>"%{value} needs to be :inherit, :resolve"}, allow_nil: true

        # @return [Object, nil] The name of the End Point Retention Policy the Bridge Domain should use when overriding the default End Point Retention Policy.
        attribute :endpoint_retention_policy

        # @return [Object, nil] The name of the IGMP Snooping Policy the Bridge Domain should use when overriding the default IGMP Snooping Policy.
        attribute :igmp_snoop_policy

        # @return [Symbol, nil] Determines if the Bridge Domain should learn End Point IPs.,The APIC defaults to C(yes) when unset during creation.
        attribute :ip_learning
        validates :ip_learning, type: Symbol

        # @return [Object, nil] The name of the IPv6 Neighbor Discovery Policy the Bridge Domain should use when overridding the default IPV6 ND Policy.
        attribute :ipv6_nd_policy

        # @return [:proxy, :flood, nil] Determines what forwarding method to use for unknown l2 destinations.,The APIC defaults to C(proxy) when unset during creation.
        attribute :l2_unknown_unicast
        validates :l2_unknown_unicast, inclusion: {:in=>[:proxy, :flood], :message=>"%{value} needs to be :proxy, :flood"}, allow_nil: true

        # @return [:flood, :"opt-flood", nil] Determines the forwarding method to use for unknown multicast destinations.,The APIC defaults to C(flood) when unset during creation.
        attribute :l3_unknown_multicast
        validates :l3_unknown_multicast, inclusion: {:in=>[:flood, :"opt-flood"], :message=>"%{value} needs to be :flood, :\"opt-flood\""}, allow_nil: true

        # @return [Symbol, nil] Determines if the BD should limit IP learning to only subnets owned by the Bridge Domain.,The APIC defaults to C(yes) when unset during creation.
        attribute :limit_ip_learn
        validates :limit_ip_learn, type: Symbol

        # @return [String, nil] The MAC Address to assign to the C(bd) instead of using the default.,The APIC defaults to C(00:22:BD:F8:19:FF) when unset during creation.
        attribute :mac_address
        validates :mac_address, type: String

        # @return [:"bd-flood", :drop, :"encap-flood", nil] Determines the forwarding method for L2 multicast, broadcast, and link layer traffic.,The APIC defaults to C(bd-flood) when unset during creation.
        attribute :multi_dest
        validates :multi_dest, inclusion: {:in=>[:"bd-flood", :drop, :"encap-flood"], :message=>"%{value} needs to be :\"bd-flood\", :drop, :\"encap-flood\""}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] The name of the Tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] The name of the VRF.
        attribute :vrf
        validates :vrf, type: String
      end
    end
  end
end

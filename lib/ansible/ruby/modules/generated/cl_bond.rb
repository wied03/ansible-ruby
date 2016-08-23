# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cl_bond < Base
        # @return [Object] name of the interface
        attribute :name
        validates :name, presence: true

        # @return [Object] add a port description
        attribute :alias_name

        # @return [Object] list of IPv4 addresses to configure on the interface. use X.X.X.X/YY syntax.
        attribute :ipv4

        # @return [Object] list of IPv6 addresses  to configure on the interface. use X:X:X::X/YYY syntax
        attribute :ipv6

        # @return [Object] configures the port to use DHCP. To enable this feature use the option 'dhcp'
        attribute :addr_method
        validates :addr_method, inclusion: {:in=>[:dhcp], :message=>"%{value} needs to be :dhcp"}, allow_nil: true

        # @return [Object] set MTU. Configure Jumbo Frame by setting MTU to 9000.
        attribute :mtu

        # @return [Object] define IPv4 virtual IP used by the Cumulus Linux VRR feature
        attribute :virtual_ip

        # @return [Object] define Ethernet mac associated with Cumulus Linux VRR feature
        attribute :virtual_mac

        # @return [Object] in vlan aware mode, lists vlans defined under the interface
        attribute :vids

        # @return [Object] Enables BPDU Guard on a port in vlan-aware mode
        attribute :mstpctl_bpduguard

        # @return [Object] Enables bridge assurance in vlan-aware mode
        attribute :mstpctl_portnetwork

        # @return [Object] Enables admin edge port
        attribute :mstpctl_portadminedge

        # @return [Object] specify a unique clag_id for every dual connected bond on each peer switch. The value must be between 1 and 65535 and must be the same on both peer switches in order for the bond to be considered dual-connected
        attribute :clag_id

        # @return [Object] in vlan aware mode, defines vlan that is the untagged vlan
        attribute :pvid

        # @return [Fixnum] mii link monitoring interval
        attribute :miimon
        validates :miimon, type: Fixnum

        # @return [String] bond mode. as of Cumulus Linux 2.5 only LACP bond mode is supported
        attribute :mode
        validates :mode, type: String

        # @return [Fixnum] minimum number of links
        attribute :min_links
        validates :min_links, type: Fixnum

        # @return [Object] Enable LACP bypass.
        attribute :lacp_bypass_allow

        # @return [Object] Period for enabling LACP bypass. Max value is 900.
        attribute :lacp_bypass_period

        # @return [Object] List of ports and priorities. Example "swp1=10, swp2=20"
        attribute :lacp_bypass_priority

        # @return [Object] Activate all interfaces for bypass. It is recommended to configure all_active instead of using bypass_priority.
        attribute :lacp_bypass_all_active

        # @return [Fixnum] lacp rate
        attribute :lacp_rate
        validates :lacp_rate, type: Fixnum

        # @return [Object] bond members
        attribute :slaves
        validates :slaves, presence: true

        # @return [String] transmit load balancing algorithm. As of Cumulus Linux 2.5 only layer3+4 policy is supported
        attribute :xmit_hash_policy
        validates :xmit_hash_policy, type: String

        # @return [Array] interface directory location
        attribute :location
        validates :location, type: Array
      end
    end
  end
end

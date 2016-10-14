# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a bond interface on Cumulus Linux To configure a bridge port use the cl_bridge module. To configure any other type of interface use the cl_interface module. Follow the guidelines for bonding found in the Cumulus User Guide at http://docs.cumulusnetworks.com
      class Cl_bond < Base
        # @return [Object] name of the interface
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] add a port description
        attribute :alias_name

        # @return [Object, nil] list of IPv4 addresses to configure on the interface. use X.X.X.X/YY syntax.
        attribute :ipv4

        # @return [Object, nil] list of IPv6 addresses  to configure on the interface. use X:X:X::X/YYY syntax
        attribute :ipv6

        # @return [:dhcp, nil] configures the port to use DHCP. To enable this feature use the option 'dhcp'
        attribute :addr_method
        validates :addr_method, inclusion: {:in=>[:dhcp], :message=>"%{value} needs to be :dhcp"}, allow_nil: true

        # @return [Object, nil] set MTU. Configure Jumbo Frame by setting MTU to 9000.
        attribute :mtu

        # @return [Object, nil] define IPv4 virtual IP used by the Cumulus Linux VRR feature
        attribute :virtual_ip

        # @return [Object, nil] define Ethernet mac associated with Cumulus Linux VRR feature
        attribute :virtual_mac

        # @return [Object, nil] in vlan aware mode, lists vlans defined under the interface
        attribute :vids

        # @return [Object, nil] Enables BPDU Guard on a port in vlan-aware mode
        attribute :mstpctl_bpduguard

        # @return [Object, nil] Enables bridge assurance in vlan-aware mode
        attribute :mstpctl_portnetwork

        # @return [Object, nil] Enables admin edge port
        attribute :mstpctl_portadminedge

        # @return [Object, nil] specify a unique clag_id for every dual connected bond on each peer switch. The value must be between 1 and 65535 and must be the same on both peer switches in order for the bond to be considered dual-connected
        attribute :clag_id

        # @return [Object, nil] in vlan aware mode, defines vlan that is the untagged vlan
        attribute :pvid

        # @return [Integer, nil] mii link monitoring interval
        attribute :miimon
        validates :miimon, type: Integer

        # @return [String, nil] bond mode. as of Cumulus Linux 2.5 only LACP bond mode is supported
        attribute :mode
        validates :mode, type: String

        # @return [Integer, nil] minimum number of links
        attribute :min_links
        validates :min_links, type: Integer

        # @return [Object, nil] Enable LACP bypass.
        attribute :lacp_bypass_allow

        # @return [Object, nil] Period for enabling LACP bypass. Max value is 900.
        attribute :lacp_bypass_period

        # @return [Object, nil] List of ports and priorities. Example "swp1=10, swp2=20"
        attribute :lacp_bypass_priority

        # @return [Object, nil] Activate all interfaces for bypass. It is recommended to configure all_active instead of using bypass_priority.
        attribute :lacp_bypass_all_active

        # @return [Integer, nil] lacp rate
        attribute :lacp_rate
        validates :lacp_rate, type: Integer

        # @return [Object] bond members
        attribute :slaves
        validates :slaves, presence: true

        # @return [String, nil] transmit load balancing algorithm. As of Cumulus Linux 2.5 only layer3+4 policy is supported
        attribute :xmit_hash_policy
        validates :xmit_hash_policy, type: String

        # @return [String, nil] interface directory location
        attribute :location
        validates :location, type: String
      end
    end
  end
end

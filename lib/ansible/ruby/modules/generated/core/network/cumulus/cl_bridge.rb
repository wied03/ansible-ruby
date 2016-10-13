# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a bridge interface on Cumulus Linux To configure a bond port use the cl_bond module. To configure any other type of interface use the cl_interface module. Follow the guidelines for bridging found in the Cumulus User Guide at http://docs.cumulusnetworks.com
      class Cl_bridge < Base
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

        # @return [Object, nil] in vlan aware mode, defines vlan that is the untagged vlan
        attribute :pvid

        # @return [String, nil] enables spanning tree. As of Cumulus Linux 2.5 the default bridging mode, only per vlan RSTP or 802.1d is supported. For the vlan aware mode, only common instance STP is supported
        attribute :stp
        validates :stp, type: String

        # @return [Object] list of bridge members
        attribute :ports
        validates :ports, presence: true

        # @return [Object, nil] enables vlan aware mode.
        attribute :vlan_aware

        # @return [Object, nil] set spanning tree root priority. Must be a multiple of 4096
        attribute :mstpctl_treeprio

        # @return [String, nil] interface directory location
        attribute :location
        validates :location, type: String
      end
    end
  end
end

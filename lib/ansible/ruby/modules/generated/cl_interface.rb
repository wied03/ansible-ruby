# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cl_interface < Base
        # @return [Object] name of the interface
        attribute :name
        validates :name, presence: true

        # @return [Object] add a port description
        attribute :alias_name

        # @return [Object] list of IPv4 addresses to configure on the interface. use X.X.X.X/YY syntax.
        attribute :ipv4

        # @return [Object] list of IPv6 addresses  to configure on the interface. use X:X:X::X/YYY syntax
        attribute :ipv6

        # @return [Object] can be loopback for loopback interfaces or dhcp for dhcp interfaces.
        attribute :addr_method

        # @return [Object] set speed of the swp(front panel) or management(eth0) interface. speed is in MB
        attribute :speed

        # @return [Object] set MTU. Configure Jumbo Frame by setting MTU to 9000.
        attribute :mtu

        # @return [Object] define IPv4 virtual IP used by the Cumulus VRR feature
        attribute :virtual_ip

        # @return [Object] define Ethernet mac associated with Cumulus VRR feature
        attribute :virtual_mac

        # @return [Object] in vlan aware mode, lists vlans defined under the interface
        attribute :vids

        # @return [Object] Enables BPDU Guard on a port in vlan-aware mode
        attribute :mstpctl_bpduguard

        # @return [Object] Enables bridge assurance in vlan-aware mode
        attribute :mstpctl_portnetwork

        # @return [Object] Enables admin edge port
        attribute :mstpctl_portadminedge

        # @return [Object] Enables the clagd daemon. This command should only be applied to the clag peerlink interface
        attribute :clagd_enable

        # @return [Object] Integer that changes the role the switch has in the clag domain. The lower priority switch will assume the primary role. The number can be between 0 and 65535
        attribute :clagd_priority

        # @return [Object] IP address of the directly connected peer switch interface
        attribute :clagd_peer_ip

        # @return [Object] Clagd system mac address. Recommended to use the range starting with 44:38:39:ff. Needs to be the same between 2 Clag switches
        attribute :clagd_sys_mac

        # @return [Object] in vlan aware mode, defines vlan that is the untagged vlan
        attribute :pvid

        # @return [Array] interface directory location
        attribute :location
        validates :location, type: Array
      end
    end
  end
end

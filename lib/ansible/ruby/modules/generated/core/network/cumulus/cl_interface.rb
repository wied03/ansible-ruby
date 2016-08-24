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

        # @return [Object, nil] add a port description
        attribute :alias_name

        # @return [Object, nil] list of IPv4 addresses to configure on the interface. use X.X.X.X/YY syntax.
        attribute :ipv4

        # @return [Object, nil] list of IPv6 addresses  to configure on the interface. use X:X:X::X/YYY syntax
        attribute :ipv6

        # @return [Object, nil] can be loopback for loopback interfaces or dhcp for dhcp interfaces.
        attribute :addr_method

        # @return [Object, nil] set speed of the swp(front panel) or management(eth0) interface. speed is in MB
        attribute :speed

        # @return [Object, nil] set MTU. Configure Jumbo Frame by setting MTU to 9000.
        attribute :mtu

        # @return [Object, nil] define IPv4 virtual IP used by the Cumulus VRR feature
        attribute :virtual_ip

        # @return [Object, nil] define Ethernet mac associated with Cumulus VRR feature
        attribute :virtual_mac

        # @return [Object, nil] in vlan aware mode, lists vlans defined under the interface
        attribute :vids

        # @return [Object, nil] Enables BPDU Guard on a port in vlan-aware mode
        attribute :mstpctl_bpduguard

        # @return [Object, nil] Enables bridge assurance in vlan-aware mode
        attribute :mstpctl_portnetwork

        # @return [Object, nil] Enables admin edge port
        attribute :mstpctl_portadminedge

        # @return [Object, nil] Enables the clagd daemon. This command should only be applied to the clag peerlink interface
        attribute :clagd_enable

        # @return [Object, nil] Integer that changes the role the switch has in the clag domain. The lower priority switch will assume the primary role. The number can be between 0 and 65535
        attribute :clagd_priority

        # @return [Object, nil] IP address of the directly connected peer switch interface
        attribute :clagd_peer_ip

        # @return [Object, nil] Clagd system mac address. Recommended to use the range starting with 44:38:39:ff. Needs to be the same between 2 Clag switches
        attribute :clagd_sys_mac

        # @return [Object, nil] in vlan aware mode, defines vlan that is the untagged vlan
        attribute :pvid

        # @return [String, nil] interface directory location
        attribute :location
        validates :location, type: String
      end
    end
  end
end

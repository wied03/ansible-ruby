# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a front panel, sub-interface, SVI, management or loopback port on a Cumulus Linux switch. For bridge ports use the cl_bridge module. For bond ports use the cl_bond module. When configuring bridge related features like the "vid" option, please follow the guidelines for configuring "vlan aware" bridging. For more details review the Layer2 Interface Guide at U(http://docs.cumulusnetworks.com)
      class Cl_interface < Base
        # @return [Object] Name of the interface.
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] Description of the port.
        attribute :alias_name

        # @return [Object, nil] List of IPv4 addresses to configure on the interface. In the form I(X.X.X.X/YY).
        attribute :ipv4

        # @return [Object, nil] List of IPv6 addresses to configure on the interface. In the form I(X:X:X::X/YYY).
        attribute :ipv6

        # @return [:loopback, :dhcp, nil] Address method.
        attribute :addr_method
        validates :addr_method, inclusion: {:in=>[:loopback, :dhcp], :message=>"%{value} needs to be :loopback, :dhcp"}, allow_nil: true

        # @return [Object, nil] Set speed of the swp(front panel) or management(eth0) interface. speed is in MB.
        attribute :speed

        # @return [Object, nil] Set MTU. Configure Jumbo Frame by setting MTU to I(9000).
        attribute :mtu

        # @return [Object, nil] Define IPv4 virtual IP used by the Cumulus Linux VRR feature.
        attribute :virtual_ip

        # @return [Object, nil] Define Ethernet mac associated with Cumulus Linux VRR feature.
        attribute :virtual_mac

        # @return [Object, nil] In vlan-aware mode, lists VLANs defined under the interface.
        attribute :vids

        # @return [Object, nil] Enables BPDU Guard on a port in vlan-aware mode.
        attribute :mstpctl_bpduguard

        # @return [Object, nil] Enables bridge assurance in vlan-aware mode.
        attribute :mstpctl_portnetwork

        # @return [Object, nil] Enables admin edge port.
        attribute :mstpctl_portadminedge

        # @return [Object, nil] Enables the clagd daemon. This command should only be applied to the clag peerlink interface.
        attribute :clagd_enable

        # @return [Object, nil] Integer that changes the role the switch has in the clag domain. The lower priority switch will assume the primary role. The number can be between 0 and 65535.
        attribute :clagd_priority

        # @return [Object, nil] IP address of the directly connected peer switch interface.
        attribute :clagd_peer_ip

        # @return [Object, nil] Clagd system mac address. Recommended to use the range starting with 44:38:39:ff. Needs to be the same between 2 Clag switches.
        attribute :clagd_sys_mac

        # @return [Object, nil] In vlan-aware mode, defines vlan that is the untagged vlan.
        attribute :pvid

        # @return [String, nil] Interface directory location
        attribute :location
        validates :location, type: String
      end
    end
  end
end

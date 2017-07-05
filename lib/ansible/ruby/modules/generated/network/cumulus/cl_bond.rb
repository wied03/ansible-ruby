# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a bond interface on Cumulus Linux To configure a bridge port use the cl_bridge module. To configure any other type of interface use the cl_interface module. Follow the guidelines for bonding found in the Cumulus User Guide at U(http://docs.cumulusnetworks.com).
      class Cl_bond < Base
        # @return [String] Name of the interface.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the port.
        attribute :alias_name
        validates :alias_name, type: String

        # @return [String, nil] List of IPv4 addresses to configure on the interface. In the form I(X.X.X.X/YY).
        attribute :ipv4
        validates :ipv4, type: String

        # @return [String, nil] List of IPv6 addresses to configure on the interface. In the form I(X:X:X::X/YYY).
        attribute :ipv6
        validates :ipv6, type: String

        # @return [:dhcp, nil] Configures the port to use DHCP. To enable this feature use the option I(dhcp).
        attribute :addr_method
        validates :addr_method, inclusion: {:in=>[:dhcp], :message=>"%{value} needs to be :dhcp"}, allow_nil: true

        # @return [String, nil] Set MTU. Configure Jumbo Frame by setting MTU to I(9000).
        attribute :mtu
        validates :mtu, type: String

        # @return [String, nil] Define IPv4 virtual IP used by the Cumulus Linux VRR feature.
        attribute :virtual_ip
        validates :virtual_ip, type: String

        # @return [String, nil] Define Ethernet mac associated with Cumulus Linux VRR feature.
        attribute :virtual_mac
        validates :virtual_mac, type: String

        # @return [String, nil] In vlan-aware mode, lists VLANs defined under the interface.
        attribute :vids
        validates :vids, type: String

        # @return [Boolean, nil] Enables BPDU Guard on a port in vlan-aware mode.
        attribute :mstpctl_bpduguard
        validates :mstpctl_bpduguard, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enables bridge assurance in vlan-aware mode.
        attribute :mstpctl_portnetwork
        validates :mstpctl_portnetwork, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enables admin edge port.
        attribute :mstpctl_portadminedge
        validates :mstpctl_portadminedge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, String, nil] Specify a unique clag_id for every dual connected bond on each peer switch. The value must be between 1 and 65535 and must be the same on both peer switches in order for the bond to be considered dual-connected.
        attribute :clag_id
        validates :clag_id, type: MultipleTypes.new(Integer, String)

        # @return [Object, nil] In vlan-aware mode, defines vlan that is the untagged vlan.
        attribute :pvid

        # @return [Integer, nil] The mii link monitoring interval.
        attribute :miimon
        validates :miimon, type: Integer

        # @return [String, nil] The bond mode, as of Cumulus Linux 2.5 only LACP bond mode is supported.
        attribute :mode
        validates :mode, type: String

        # @return [Integer, nil] Minimum number of links.
        attribute :min_links
        validates :min_links, type: Integer

        # @return [Object, nil] Enable LACP bypass.
        attribute :lacp_bypass_allow

        # @return [Object, nil] Period for enabling LACP bypass. Max value is 900.
        attribute :lacp_bypass_period

        # @return [Object, nil] List of ports and priorities. Example I("swp1=10, swp2=20").
        attribute :lacp_bypass_priority

        # @return [Object, nil] Activate all interfaces for bypass. It is recommended to configure all_active instead of using bypass_priority.
        attribute :lacp_bypass_all_active

        # @return [Integer, nil] The lacp rate.
        attribute :lacp_rate
        validates :lacp_rate, type: Integer

        # @return [Array<String>, String] Bond members.
        attribute :slaves
        validates :slaves, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] Transmit load balancing algorithm. As of Cumulus Linux 2.5 only I(layer3+4) policy is supported.
        attribute :xmit_hash_policy
        validates :xmit_hash_policy, type: String

        # @return [String, nil] Interface directory location.
        attribute :location
        validates :location, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures a bridge interface on Cumulus Linux To configure a bond port use the cl_bond module. To configure any other type of interface use the cl_interface module. Follow the guidelines for bridging found in the Cumulus User Guide at U(http://docs.cumulusnetworks.com)
      class Cl_bridge < Base
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

        # @return [Object, nil] In vlan-aware mode, defines vlan that is the untagged vlan.
        attribute :pvid

        # @return [:yes, :no, nil] Enables spanning tree Protocol. As of Cumulus Linux 2.5 the default bridging mode, only per vlan RSTP or 802.1d is supported. For the vlan aware mode, only common instance STP is supported
        attribute :stp
        validates :stp, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] List of bridge members.
        attribute :ports
        validates :ports, presence: true, type: String

        # @return [:yes, :no, nil] Enables vlan-aware mode.
        attribute :vlan_aware
        validates :vlan_aware, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Set spanning tree root priority. Must be a multiple of 4096.
        attribute :mstpctl_treeprio
        validates :mstpctl_treeprio, type: String

        # @return [String, nil] Interface directory location.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
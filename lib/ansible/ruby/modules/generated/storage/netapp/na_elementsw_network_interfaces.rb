# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure Element SW Node Network Interfaces for Bond 1G and 10G IP address.
      class Na_elementsw_network_interfaces < Base
        # @return [:loopback, :manual, :dhcp, :static] Type of Method used to configure the interface.,method depends on other settings such as the use of a static IP address, which will change the method to static.,loopback - Used to define the IPv4 loopback interface.,manual - Used to define interfaces for which no configuration is done by default.,dhcp - May be used to obtain an IP address via DHCP.,static - Used to define Ethernet interfaces with statically allocated IPv4 addresses.
        attribute :method
        validates :method, presence: true, inclusion: {:in=>[:loopback, :manual, :dhcp, :static], :message=>"%{value} needs to be :loopback, :manual, :dhcp, :static"}

        # @return [String] IP address for the 1G network.
        attribute :ip_address_1g
        validates :ip_address_1g, presence: true, type: String

        # @return [String] IP address for the 10G network.
        attribute :ip_address_10g
        validates :ip_address_10g, presence: true, type: String

        # @return [String] 1GbE Subnet Mask.
        attribute :subnet_1g
        validates :subnet_1g, presence: true, type: String

        # @return [String] 10GbE Subnet Mask.
        attribute :subnet_10g
        validates :subnet_10g, presence: true, type: String

        # @return [String] Router network address to send packets out of the local network.
        attribute :gateway_address_1g
        validates :gateway_address_1g, presence: true, type: String

        # @return [String] Router network address to send packets out of the local network.
        attribute :gateway_address_10g
        validates :gateway_address_10g, presence: true, type: String

        # @return [String, nil] Maximum Transmission Unit for 1GbE, Largest packet size that a network protocol can transmit.,Must be greater than or equal to 1500 bytes.
        attribute :mtu_1g
        validates :mtu_1g, type: String

        # @return [String, nil] Maximum Transmission Unit for 10GbE, Largest packet size that a network protocol can transmit.,Must be greater than or equal to 1500 bytes.
        attribute :mtu_10g
        validates :mtu_10g, type: String

        # @return [Object, nil] List of addresses for domain name servers.
        attribute :dns_nameservers

        # @return [Object, nil] List of DNS search domains.
        attribute :dns_search_domains

        # @return [:ActivePassive, :ALB, :LACP, nil] Bond mode for 1GbE configuration.
        attribute :bond_mode_1g
        validates :bond_mode_1g, inclusion: {:in=>[:ActivePassive, :ALB, :LACP], :message=>"%{value} needs to be :ActivePassive, :ALB, :LACP"}, allow_nil: true

        # @return [:ActivePassive, :ALB, :LACP, nil] Bond mode for 10GbE configuration.
        attribute :bond_mode_10g
        validates :bond_mode_10g, inclusion: {:in=>[:ActivePassive, :ALB, :LACP], :message=>"%{value} needs to be :ActivePassive, :ALB, :LACP"}, allow_nil: true

        # @return [:Fast, :Slow, nil] Link Aggregation Control Protocol useful only if LACP is selected as the Bond Mode.,Slow - Packets are transmitted at 30 second intervals.,Fast - Packets are transmitted in 1 second intervals.
        attribute :lacp_1g
        validates :lacp_1g, inclusion: {:in=>[:Fast, :Slow], :message=>"%{value} needs to be :Fast, :Slow"}, allow_nil: true

        # @return [:Fast, :Slow, nil] Link Aggregation Control Protocol useful only if LACP is selected as the Bond Mode.,Slow - Packets are transmitted at 30 second intervals.,Fast - Packets are transmitted in 1 second intervals.
        attribute :lacp_10g
        validates :lacp_10g, inclusion: {:in=>[:Fast, :Slow], :message=>"%{value} needs to be :Fast, :Slow"}, allow_nil: true

        # @return [Object, nil] This is the primary network tag. All nodes in a cluster have the same VLAN tag.
        attribute :virtual_network_tag
      end
    end
  end
end

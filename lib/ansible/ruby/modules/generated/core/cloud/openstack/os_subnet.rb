# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_subnet < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the network to which the subnet should be attached,requried when I(state) is 'present'
        attribute :network_name
        validates :network_name, type: String

        # @return [String] The name of the subnet that should be created. Although Neutron allows for non-unique subnet names, this module enforces subnet name uniqueness.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The CIDR representation of the subnet that should be assigned to the subnet. Required when I(state) is 'present'
        attribute :cidr
        validates :cidr, type: String

        # @return [Fixnum] The IP version of the subnet 4 or 6
        attribute :ip_version
        validates :ip_version, type: Fixnum

        # @return [TrueClass] Whether DHCP should be enabled for this subnet.
        attribute :enable_dhcp
        validates :enable_dhcp, type: TrueClass

        # @return [String] The ip that would be assigned to the gateway for this subnet
        attribute :gateway_ip
        validates :gateway_ip, type: String

        # @return [String] List of DNS nameservers for this subnet.
        attribute :dns_nameservers
        validates :dns_nameservers, type: String

        # @return [String] From the subnet pool the starting address from which the IP should be allocated.
        attribute :allocation_pool_start
        validates :allocation_pool_start, type: String

        # @return [String] From the subnet pool the last IP that should be assigned to the virtual machines.
        attribute :allocation_pool_end
        validates :allocation_pool_end, type: String

        # @return [String] A list of host route dictionaries for the subnet.
        attribute :host_routes
        validates :host_routes, type: String

        # @return [:"dhcpv6-stateful", :"dhcpv6-stateless", :slaac, nil] IPv6 router advertisement mode
        attribute :ipv6_ra_mode
        validates :ipv6_ra_mode, inclusion: {:in=>[:"dhcpv6-stateful", :"dhcpv6-stateless", :slaac], :message=>"%{value} needs to be :\"dhcpv6-stateful\", :\"dhcpv6-stateless\", :slaac"}, allow_nil: true

        # @return [:"dhcpv6-stateful", :"dhcpv6-stateless", :slaac, nil] IPv6 address mode
        attribute :ipv6_address_mode
        validates :ipv6_address_mode, inclusion: {:in=>[:"dhcpv6-stateful", :"dhcpv6-stateless", :slaac], :message=>"%{value} needs to be :\"dhcpv6-stateful\", :\"dhcpv6-stateless\", :slaac"}, allow_nil: true

        # @return [String] Project name or ID containing the subnet (name admin-only)
        attribute :project
        validates :project, type: String
      end
    end
  end
end

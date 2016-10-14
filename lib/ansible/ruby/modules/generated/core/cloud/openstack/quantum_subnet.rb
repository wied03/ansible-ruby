# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add/remove subnet from a network
      class Quantum_subnet < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [Boolean] Password of login user
        attribute :login_password
        validates :login_password, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [Boolean] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [String, nil] The keystone URL for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the network to which the subnet should be attached
        attribute :network_name
        validates :network_name, presence: true, type: String

        # @return [String] The name of the subnet that should be created
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The CIDR representation of the subnet that should be assigned to the subnet
        attribute :cidr
        validates :cidr, presence: true, type: String

        # @return [String, nil] The name of the tenant for whom the subnet should be created
        attribute :tenant_name
        validates :tenant_name, type: String

        # @return [Integer, nil] The IP version of the subnet 4 or 6
        attribute :ip_version
        validates :ip_version, type: Integer

        # @return [Boolean, nil] Whether DHCP should be enabled for this subnet.
        attribute :enable_dhcp
        validates :enable_dhcp, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The ip that would be assigned to the gateway for this subnet
        attribute :gateway_ip

        # @return [Object, nil] DNS nameservers for this subnet, comma-separated
        attribute :dns_nameservers

        # @return [Object, nil] From the subnet pool the starting address from which the IP should be allocated
        attribute :allocation_pool_start

        # @return [Object, nil] From the subnet pool the last IP that should be assigned to the virtual machines
        attribute :allocation_pool_end
      end
    end
  end
end

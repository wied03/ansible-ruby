# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a network interface. When creating a network interface you must provide the name of an existing virtual network, the name of an existing subnet within the virtual network. A default security group and public IP address will be created automatically, or you can provide the name of an existing security group and public IP address. See the examples below for more details.
      class Azure_rm_networkinterface < Base
        # @return [String] Name of a resource group where the network interface exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the network interface.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the network interface. Use 'present' to create or update an interface and 'absent' to delete an interface.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [String] An existing virtual network with which the network interface will be associated. Required when creating a network interface.,It can be the virtual network's name.,Make sure your virtual network is in the same resource group as NIC when you give only the name.,It can be the virtual network's resource id.,It can be a dict which contains C(name) and C(resource_group) of the virtual network.
        attribute :virtual_network
        validates :virtual_network, presence: true, type: String

        # @return [String] Name of an existing subnet within the specified virtual network. Required when creating a network interface,Use the C(virtual_network)'s resource group.
        attribute :subnet_name
        validates :subnet_name, presence: true, type: String

        # @return [:Windows, :Linux, nil] Determines any rules to be added to a default security group. When creating a network interface, if no security group name is provided, a default security group will be created. If the os_type is 'Windows', a rule will be added allowing RDP access. If the os_type is 'Linux', a rule allowing SSH access will be added.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [Object, nil] (Deprecate) Valid IPv4 address that falls within the specified subnet.,This option will be deprecated in 2.9, use I(ip_configurations) instead.
        attribute :private_ip_address

        # @return [:Dynamic, :Static, nil] (Deprecate) Specify whether or not the assigned IP address is permanent. NOTE: when creating a network interface specifying a value of 'Static' requires that a private_ip_address value be provided. You can update the allocation method to 'Static' after a dynamic private ip address has been assigned.,This option will be deprecated in 2.9, use I(ip_configurations) instead.
        attribute :private_ip_allocation_method
        validates :private_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [String, nil] (Deprecate) When creating a network interface, if no public IP address name is provided a default public IP address will be created. Set to false, if you do not want a public IP address automatically created.,This option will be deprecated in 2.9, use I(ip_configurations) instead.
        attribute :public_ip
        validates :public_ip, type: String

        # @return [Object, nil] (Deprecate) Name of an existing public IP address object to associate with the security group.,This option will be deprecated in 2.9, use I(ip_configurations) instead.
        attribute :public_ip_address_name

        # @return [:Dynamic, :Static, nil] (Deprecate) If a public_ip_address_name is not provided, a default public IP address will be created. The allocation method determines whether or not the public IP address assigned to the network interface is permanent.,This option will be deprecated in 2.9, use I(ip_configurations) instead.
        attribute :public_ip_allocation_method
        validates :public_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of ip configuration if contains mutilple configuration, should contain configuration object include field private_ip_address, private_ip_allocation_method, public_ip_address_name, public_ip, public_ip_allocation_method, name
        attribute :ip_configurations
        validates :ip_configurations, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Specifies whether the network interface should be created with the accelerated networking feature or not
        attribute :enable_accelerated_networking
        validates :enable_accelerated_networking, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether a default security group should be be created with the NIC. Only applies when creating a new NIC.
        attribute :create_with_security_group
        validates :create_with_security_group, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, Hash, nil] An existing security group with which to associate the network interface. If not provided, a default security group will be created when C(create_with_security_group) is true.,It can be the name of security group.,Make sure the security group is in the same resource group when you only give its name.,It can be the resource id.,It can be a dict contains security_group's C(name) and C(resource_group).
        attribute :security_group
        validates :security_group, type: MultipleTypes.new(String, Hash)

        # @return [Object, nil] When a default security group is created for a Linux host a rule will be added allowing inbound TCP connections to the default SSH port 22, and for a Windows host rules will be added allowing inbound access to RDP ports 3389 and 5986. Override the default ports by providing a list of open ports.
        attribute :open_ports

        # @return [Boolean, nil] Whether to enable IP forwarding
        attribute :enable_ip_forwarding
        validates :enable_ip_forwarding, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Which DNS servers should the NIC lookup,List of IP's
        attribute :dns_servers
        validates :dns_servers, type: TypeGeneric.new(String)
      end
    end
  end
end

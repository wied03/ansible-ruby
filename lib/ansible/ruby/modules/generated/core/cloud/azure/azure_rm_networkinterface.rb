# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [String, nil] Name of an existing virtual network with which the network interface will be associated. Required when creating a network interface.
        attribute :virtual_network_name
        validates :virtual_network_name, type: String

        # @return [String, nil] Name of an existing subnet within the specified virtual network. Required when creating a network interface
        attribute :subnet_name
        validates :subnet_name, type: String

        # @return [:Windows, :Linux, nil] Determines any rules to be added to a default security group. When creating a network interface, if no security group name is provided, a default security group will be created. If the os_type is 'Windows', a rule will be added allowing RDP access. If the os_type is 'Linux', a rule allowing SSH access will be added.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [Object, nil] Valid IPv4 address that falls within the specified subnet.
        attribute :private_ip_address

        # @return [:Dynamic, :Static, nil] Specify whether or not the assigned IP address is permanent. NOTE: when creating a network interface specifying a value of 'Static' requires that a private_ip_address value be provided. You can update the allocation method to 'Static' after a dynamic private ip address has been assigned.
        attribute :private_ip_allocation_method
        validates :private_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [TrueClass, nil] When creating a network interface, if no public IP address name is provided a default public IP address will be created. Set to false, if you do not want a public IP address automatically created.
        attribute :public_ip
        validates :public_ip, type: TrueClass

        # @return [String, nil] Name of an existing public IP address object to associate with the security group.
        attribute :public_ip_address_name
        validates :public_ip_address_name, type: String

        # @return [:Dynamic, :Static, nil] If a public_ip_address_name is not provided, a default public IP address will be created. The allocation method determines whether or not the public IP address assigned to the network interface is permanent.
        attribute :public_ip_allocation_method
        validates :public_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [String, nil] Name of an existing security group with which to associate the network interface. If not provided, a default security group will be created.
        attribute :security_group_name
        validates :security_group_name, type: String

        # @return [Object, nil] When a default security group is created for a Linux host a rule will be added allowing inbound TCP connections to the default SSH port 22, and for a Windows host rules will be added allowing inbound access to RDP ports 3389 and 5986. Override the default ports by providing a list of open ports.
        attribute :open_ports
      end
    end
  end
end

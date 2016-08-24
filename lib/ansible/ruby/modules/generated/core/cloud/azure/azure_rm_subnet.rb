# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_subnet < Base
        # @return [String] Name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the subnet.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] CIDR defining the IPv4 address space of the subnet. Must be valid within the context of the virtual network.
        attribute :address_prefix_cidr
        validates :address_prefix_cidr, presence: true, type: String

        # @return [Object, nil] Name of an existing security group with which to associate the subnet.
        attribute :security_group_name

        # @return [:absent, :present] Assert the state of the subnet. Use 'present' to create or update a subnet and 'absent' to delete a subnet.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}

        # @return [String] Name of an existing virtual network with which the subnet is or will be associated.
        attribute :virtual_network_name
        validates :virtual_network_name, presence: true, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a subnet within a given virtual network. Allows setting and updating the address prefix CIDR, which must be valid within the context of the virtual network. Use the azure_rm_networkinterface module to associate interfaces with the subnet and assign specific IP addresses.
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

        # @return [Hash, nil] Existing security group with which to associate the subnet.,It can be the security group name which is in the same resource group.,It can be the resource Id.,It can be a dict which contains C(name) and C(resource_group) of the security group.
        attribute :security_group
        validates :security_group, type: Hash

        # @return [:absent, :present, nil] Assert the state of the subnet. Use 'present' to create or update a subnet and 'absent' to delete a subnet.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] Name of an existing virtual network with which the subnet is or will be associated.
        attribute :virtual_network_name
        validates :virtual_network_name, presence: true, type: String

        # @return [String, nil] The reference of the RouteTable resource.,It can accept both a str or a dict.,The str can be the name or resource id of the route table.,The dict can contains C(name) and C(resource_group) of the route_table.
        attribute :route_table
        validates :route_table, type: String
      end
    end
  end
end

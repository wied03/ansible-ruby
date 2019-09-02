# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a route.
      class Azure_rm_route < Base
        # @return [String] name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] name of the route.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the route. Use 'present' to create or update and 'absent' to delete.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The destination CIDR to which the route applies.
        attribute :address_prefix
        validates :address_prefix, type: String

        # @return [:virtual_network_gateway, :vnet_local, :internet, :virtual_appliance, :none, nil] The type of Azure hop the packet should be sent to.
        attribute :next_hop_type
        validates :next_hop_type, expression_inclusion: {:in=>[:virtual_network_gateway, :vnet_local, :internet, :virtual_appliance, :none], :message=>"%{value} needs to be :virtual_network_gateway, :vnet_local, :internet, :virtual_appliance, :none"}, allow_nil: true

        # @return [Object, nil] The IP address packets should be forwarded to.,Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
        attribute :next_hop_ip_address

        # @return [String] The name of the route table.
        attribute :route_table_name
        validates :route_table_name, presence: true, type: String
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc_route_table < Base
        # @return [String] Look up route table by either tags or by route table ID. Non-unique tag lookup will fail. If no tags are specifed then no lookup for an existing route table is performed and a new route table will be created. To change tags of a route table, you must look up by id.
        attribute :lookup
        validates :lookup, inclusion: {:in=>[:tag, :id], :message=>"%{value} needs to be :tag, :id"}, allow_nil: true

        # @return [String] Enable route propagation from virtual gateways specified by ID.
        attribute :propagating_vgw_ids
        validates :propagating_vgw_ids, type: String

        # @return [Object] The ID of the route table to update or delete.
        attribute :route_table_id

        # @return [Array] List of routes in the route table. Routes are specified as dicts containing the keys 'dest' and one of 'gateway_id', 'instance_id', 'interface_id', or 'vpc_peering_connection_id'. If 'gateway_id' is specified, you can refer to the VPC's IGW by using the value 'igw'.
        attribute :routes
        validates :routes, presence: true, type: Array

        # @return [String] Create or destroy the VPC route table
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array] An array of subnets to add to this route table. Subnets may be specified by either subnet ID, Name tag, or by a CIDR such as '10.0.0.0/24'.
        attribute :subnets
        validates :subnets, presence: true, type: Array

        # @return [Hash] A dictionary of resource tags of the form: { tag1: value1, tag2: value2 }. Tags are used to uniquely identify route tables within a VPC when the route_table_id is not supplied.
        attribute :tags
        validates :tags, type: Hash

        # @return [String] VPC ID of the VPC in which to create the route table.
        attribute :vpc_id
        validates :vpc_id, presence: true, type: String
      end
    end
  end
end

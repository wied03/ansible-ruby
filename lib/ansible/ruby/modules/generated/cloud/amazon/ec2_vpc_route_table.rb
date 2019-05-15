# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage route tables for AWS virtual private clouds
      class Ec2_vpc_route_table < Base
        # @return [:tag, :id, nil] Look up route table by either tags or by route table ID. Non-unique tag lookup will fail. If no tags are specified then no lookup for an existing route table is performed and a new route table will be created. To change tags of a route table you must look up by id.
        attribute :lookup
        validates :lookup, inclusion: {:in=>[:tag, :id], :message=>"%{value} needs to be :tag, :id"}, allow_nil: true

        # @return [Object, nil] Enable route propagation from virtual gateways specified by ID.
        attribute :propagating_vgw_ids

        # @return [String, nil] Purge existing routes that are not found in routes.
        attribute :purge_routes
        validates :purge_routes, type: String

        # @return [String, nil] Purge existing subnets that are not found in subnets. Ignored unless the subnets option is supplied.
        attribute :purge_subnets
        validates :purge_subnets, type: String

        # @return [String, nil] Purge existing tags that are not found in route table
        attribute :purge_tags
        validates :purge_tags, type: String

        # @return [String, nil] The ID of the route table to update or delete.
        attribute :route_table_id
        validates :route_table_id, type: String

        # @return [Array<Hash>, Hash, nil] List of routes in the route table. Routes are specified as dicts containing the keys 'dest' and one of 'gateway_id', 'instance_id', 'network_interface_id', or 'vpc_peering_connection_id'. If 'gateway_id' is specified, you can refer to the VPC's IGW by using the value 'igw'. Routes are required for present states.
        attribute :routes
        validates :routes, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Create or destroy the VPC route table
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] An array of subnets to add to this route table. Subnets may be specified by either subnet ID, Name tag, or by a CIDR such as '10.0.0.0/24'.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [Hash, nil] A dictionary of resource tags of the form: { tag1: value1, tag2: value2 }. Tags are used to uniquely identify route tables within a VPC when the route_table_id is not supplied.\r\n
        attribute :tags
        validates :tags, type: Hash

        # @return [String] VPC ID of the VPC in which to create the route table.
        attribute :vpc_id
        validates :vpc_id, presence: true, type: String
      end
    end
  end
end

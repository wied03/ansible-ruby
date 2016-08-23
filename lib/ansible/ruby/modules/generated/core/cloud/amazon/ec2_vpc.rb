# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc < Base
        # @return [Object] The cidr block representing the VPC, e.g. 10.0.0.0/16, required when I(state) is 'present'.
        attribute :cidr_block

        # @return [:default, :dedicated, nil] The supported tenancy options for instances launched into the VPC.
        attribute :instance_tenancy
        validates :instance_tenancy, inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [:yes, :no, nil] toggles the "Enable DNS resolution" flag
        attribute :dns_support
        validates :dns_support, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] toggles the "Enable DNS hostname support for instances" flag
        attribute :dns_hostnames
        validates :dns_hostnames, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] A dictionary array of subnets to add of the form: { cidr: ..., az: ... , resource_tags: ... }. Where az is the desired availability zone of the subnet, but it is not required. Tags (i.e.: resource_tags) is also optional and use dictionary form: { "Environment":"Dev", "Tier":"Web", ...}. All VPC subnets not in this list will be removed as well. As of 1.8, if the subnets parameter is not specified, no existing subnets will be modified.
        attribute :subnets

        # @return [Object] A VPC id to terminate when state=absent
        attribute :vpc_id

        # @return [Object] A dictionary array of resource tags of the form: { tag1: value1, tag2: value2 }.  Tags in this list are used in conjunction with CIDR block to uniquely identify a VPC in lieu of vpc_id. Therefore, if CIDR/Tag combination does not exist, a new VPC will be created.  VPC tags not on this list will be ignored. Prior to 1.7, specifying a resource tag was optional.
        attribute :resource_tags
        validates :resource_tags, presence: true

        # @return [:yes, :no, nil] Toggle whether there should be an Internet gateway attached to the VPC
        attribute :internet_gateway
        validates :internet_gateway, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] A dictionary array of route tables to add of the form: { subnets: [172.22.2.0/24, 172.22.3.0/24,], routes: [{ dest: 0.0.0.0/0, gw: igw},], resource_tags: ... }. Where the subnets list is those subnets the route table should be associated with, and the routes list is a list of routes to be in the table.  The special keyword for the gw of igw specifies that you should the route should go through the internet gateway attached to the VPC. gw also accepts instance-ids, interface-ids, and vpc-peering-connection-ids in addition igw. resource_tags is optional and uses dictionary form: { "Name": "public", ... }. This module is currently unable to affect the "main" route table due to some limitations in boto, so you must explicitly define the associated subnets or they will be attached to the main table implicitly. As of 1.8, if the route_tables parameter is not specified, no existing routes will be modified.
        attribute :route_tables

        # @return [:yes, :no, nil] wait for the VPC to be in state 'available' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [:present, :absent] Create or terminate the VPC
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end

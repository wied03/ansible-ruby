# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS Network Elastic Load Balancer. See U(https://aws.amazon.com/blogs/aws/new-network-load-balancer-effortless-scaling-to-millions-of-requests-per-second/) for details.
      class Elb_network_lb < Base
        # @return [Symbol, nil] Indicates whether cross-zone load balancing is enabled.
        attribute :cross_zone_load_balancing
        validates :cross_zone_load_balancing, type: Symbol

        # @return [Symbol, nil] Indicates whether deletion protection for the ELB is enabled.
        attribute :deletion_protection
        validates :deletion_protection, type: Symbol

        # @return [Array<Hash>, Hash, nil] A list of dicts containing listeners to attach to the ELB. See examples for detail of the dict required. Note that listener keys are CamelCased.
        attribute :listeners
        validates :listeners, type: TypeGeneric.new(Hash)

        # @return [String] The name of the load balancer. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] If yes, existing listeners will be purged from the ELB to match exactly what is defined by I(listeners) parameter. If the I(listeners) parameter is not set then listeners will not be modified
        attribute :purge_listeners
        validates :purge_listeners, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.
        attribute :purge_tags
        validates :purge_tags, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of dicts containing the IDs of the subnets to attach to the load balancer. You can also specify the allocation ID of an Elastic IP to attach to the load balancer. You can specify one Elastic IP address per subnet. This parameter is mutually exclusive with I(subnets)
        attribute :subnet_mappings
        validates :subnet_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present. This parameter is mutually exclusive with I(subnet_mappings)
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [:"internet-facing", :internal, nil] Internet-facing or internal load balancer. An ELB scheme can not be modified after creation.
        attribute :scheme
        validates :scheme, inclusion: {:in=>[:"internet-facing", :internal], :message=>"%{value} needs to be :\"internet-facing\", :internal"}, allow_nil: true

        # @return [:present, :absent] Create or destroy the load balancer.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] A dictionary of one or more tags to assign to the load balancer.
        attribute :tags

        # @return [Symbol, nil] Whether or not to wait for the network load balancer to reach the desired state.
        attribute :wait
        validates :wait, type: Symbol

        # @return [Object, nil] The duration in seconds to wait, used in conjunction with I(wait).
        attribute :wait_timeout
      end
    end
  end
end

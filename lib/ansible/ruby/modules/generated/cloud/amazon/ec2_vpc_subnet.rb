# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage subnets in AWS virtual private clouds
      class Ec2_vpc_subnet < Base
        # @return [Object, nil] The availability zone for the subnet.
        attribute :az

        # @return [String, nil] The CIDR block for the subnet. E.g. 192.0.2.0/24.
        attribute :cidr
        validates :cidr, type: String

        # @return [String, nil] The IPv6 CIDR block for the subnet. The VPC must have a /56 block assigned and this value must be a valid IPv6 /64 that falls in the VPC range.,Required if I(assign_instances_ipv6=true)
        attribute :ipv6_cidr
        validates :ipv6_cidr, type: String

        # @return [Object, nil] A dict of tags to apply to the subnet. Any tags currently applied to the subnet and not present here will be removed.
        attribute :tags

        # @return [:present, :absent, nil] Create or remove the subnet
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] VPC ID of the VPC in which to create or delete the subnet.
        attribute :vpc_id
        validates :vpc_id, presence: true, type: String

        # @return [:yes, :no, nil] Specify C(yes) to indicate that instances launched into the subnet should be assigned public IP address by default.
        attribute :map_public
        validates :map_public, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Specify C(yes) to indicate that instances launched into the subnet should be automatically assigned an IPv6 address.
        attribute :assign_instances_ipv6
        validates :assign_instances_ipv6, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When specified,I(state=present) module will wait for subnet to be in available state before continuing.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Number of seconds to wait for subnet to become available I(wait=True).
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:yes, :no, nil] Whether or not to remove tags that do not appear in the I(tags) list.
        attribute :purge_tags
        validates :purge_tags, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

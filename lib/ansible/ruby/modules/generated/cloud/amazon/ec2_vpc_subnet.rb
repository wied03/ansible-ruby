# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage subnets in AWS virtual private clouds
      class Ec2_vpc_subnet < Base
        # @return [Object, nil] The availability zone for the subnet. Only required when state=present.
        attribute :az

        # @return [String, nil] The CIDR block for the subnet. E.g. 192.0.2.0/24. Only required when state=present.
        attribute :cidr
        validates :cidr, type: String

        # @return [Object, nil] A dict of tags to apply to the subnet. Any tags currently applied to the subnet and not present here will be removed.
        attribute :tags

        # @return [:present, :absent, nil] Create or remove the subnet
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] VPC ID of the VPC in which to create the subnet.
        attribute :vpc_id
        validates :vpc_id, type: String
      end
    end
  end
end

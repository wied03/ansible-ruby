# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 VPC subnets in AWS
      class Ec2_vpc_subnet_facts < Base
        # @return [String, nil] A list of subnet IDs to gather facts for.
        attribute :subnet_ids
        validates :subnet_ids, type: String

        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end

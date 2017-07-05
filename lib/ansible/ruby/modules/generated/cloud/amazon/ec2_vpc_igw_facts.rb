# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about internet gateways in AWS.
      class Ec2_vpc_igw_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRouteTables.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash

        # @return [String, nil] Get details of specific Internet Gateway ID. Provide this value as a list.
        attribute :internet_gateway_ids
        validates :internet_gateway_ids, type: String
      end
    end
  end
end

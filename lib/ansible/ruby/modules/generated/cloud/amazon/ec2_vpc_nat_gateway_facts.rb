# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets various details related to AWS VPC Managed Nat Gateways
      class Ec2_vpc_nat_gateway_facts < Base
        # @return [Array<String>, String, nil] Get details of specific nat gateway IDs
        attribute :nat_gateway_ids
        validates :nat_gateway_ids, type: TypeGeneric.new(String)

        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNatGateways.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end

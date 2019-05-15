# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about customer gateways in AWS
      class Ec2_customer_gateway_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCustomerGateways.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash

        # @return [Array<String>, String, nil] Get details of a specific customer gateways using customer gateway ID/IDs. This value should be provided as a list.
        attribute :customer_gateway_ids
        validates :customer_gateway_ids, type: TypeGeneric.new(String)
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets various details related to AWS VPC Endpoints
      class Ec2_vpc_endpoint_facts < Base
        # @return [:services, :endpoints] Specifies the query action to take. Services returns the supported AWS services that can be specified when creating an endpoint.
        attribute :query
        validates :query, presence: true, expression_inclusion: {:in=>[:services, :endpoints], :message=>"%{value} needs to be :services, :endpoints"}

        # @return [Array<String>, String, nil] Get details of specific endpoint IDs,Provide this value as a list
        attribute :vpc_endpoint_ids
        validates :vpc_endpoint_ids, type: TypeGeneric.new(String)

        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpoints.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end

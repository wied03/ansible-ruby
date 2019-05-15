# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 instances in AWS
      class Ec2_instance_facts < Base
        # @return [Array<String>, String, nil] If you specify one or more instance IDs, only instances that have the specified IDs are returned.
        attribute :instance_ids
        validates :instance_ids, type: TypeGeneric.new(String)

        # @return [Object, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html) for possible filters. Filter names and values are case sensitive.
        attribute :filters
      end
    end
  end
end

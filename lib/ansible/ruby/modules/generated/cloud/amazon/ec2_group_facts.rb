# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 security groups in AWS.
      class Ec2_group_facts < Base
        # @return [Object, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See      U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html) for      possible filters. Filter names and values are case sensitive. You can also use underscores (_)      instead of dashes (-) in the filter keys, which will take precedence in case of conflict.
        attribute :filters
      end
    end
  end
end

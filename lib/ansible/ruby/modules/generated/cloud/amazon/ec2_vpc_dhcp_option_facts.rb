# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about dhcp options sets in AWS
      class Ec2_vpc_dhcp_option_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRouteTables.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash

        # @return [Object, nil] Get details of specific DHCP Option ID,Provide this value as a list
        attribute :dhcp_options_ids
      end
    end
  end
end

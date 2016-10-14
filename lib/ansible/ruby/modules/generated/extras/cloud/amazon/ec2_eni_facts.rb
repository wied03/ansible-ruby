# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 ENI interfaces in AWS
      class Ec2_eni_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInterfaces.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash
      end
    end
  end
end

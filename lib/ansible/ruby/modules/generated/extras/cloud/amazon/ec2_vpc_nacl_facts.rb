# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about Network ACLs in an AWS VPC
      class Ec2_vpc_nacl_facts < Base
        # @return [Object, nil] A list of Network ACL IDs to retrieve facts about.
        attribute :nacl_ids

        # @return [Object, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See      U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkAcls.html) for possible filters. Filter      names and values are case sensitive.
        attribute :filters
      end
    end
  end
end

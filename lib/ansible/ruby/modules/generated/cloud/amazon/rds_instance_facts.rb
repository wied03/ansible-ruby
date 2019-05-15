# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # obtain facts about one or more RDS instances
      class Rds_instance_facts < Base
        # @return [String, nil] The RDS instance's unique identifier.
        attribute :db_instance_identifier
        validates :db_instance_identifier, type: String

        # @return [Object, nil] A filter that specifies one or more DB instances to describe. See U(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html)
        attribute :filters
      end
    end
  end
end

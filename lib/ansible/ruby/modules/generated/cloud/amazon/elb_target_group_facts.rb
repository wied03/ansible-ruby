# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ELB target groups in AWS
      class Elb_target_group_facts < Base
        # @return [String, nil] The Amazon Resource Name (ARN) of the load balancer.
        attribute :load_balancer_arn
        validates :load_balancer_arn, type: String

        # @return [Object, nil] The Amazon Resource Names (ARN) of the target groups.
        attribute :target_group_arns

        # @return [Array<String>, String, nil] The names of the target groups.
        attribute :names
        validates :names, type: TypeGeneric.new(String)
      end
    end
  end
end

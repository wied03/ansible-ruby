# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets information about an AWS CloudFormation stack
      class Cloudformation_facts < Base
        # @return [String, nil] The name or id of the CloudFormation stack. Gathers facts for all stacks by default.
        attribute :stack_name
        validates :stack_name, type: String

        # @return [String, nil] Get all stack information for the stack
        attribute :all_facts
        validates :all_facts, type: String

        # @return [String, nil] Get stack events for the stack
        attribute :stack_events
        validates :stack_events, type: String

        # @return [String, nil] Get stack template body for the stack
        attribute :stack_template
        validates :stack_template, type: String

        # @return [String, nil] Get stack resources for the stack
        attribute :stack_resources
        validates :stack_resources, type: String

        # @return [String, nil] Get stack policy for the stack
        attribute :stack_policy
        validates :stack_policy, type: String
      end
    end
  end
end

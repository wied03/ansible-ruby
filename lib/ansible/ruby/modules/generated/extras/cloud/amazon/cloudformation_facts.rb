# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets information about an AWS CloudFormation stack
      class Cloudformation_facts < Base
        # @return [String] The name or id of the CloudFormation stack
        attribute :stack_name
        validates :stack_name, presence: true, type: String

        # @return [Boolean, nil] Get all stack information for the stack
        attribute :all_facts
        validates :all_facts, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get stack events for the stack
        attribute :stack_events
        validates :stack_events, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get stack template body for the stack
        attribute :stack_template
        validates :stack_template, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get stack resources for the stack
        attribute :stack_resources
        validates :stack_resources, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get stack policy for the stack
        attribute :stack_policy
        validates :stack_policy, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

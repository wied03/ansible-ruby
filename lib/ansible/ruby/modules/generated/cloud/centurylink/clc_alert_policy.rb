# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to Create or Delete Alert Policies at CenturyLink Cloud.
      class Clc_alert_policy < Base
        # @return [Object] The alias of your CLC Account
        attribute :alias
        validates :alias, presence: true

        # @return [String, nil] The name of the alert policy. This is mutually exclusive with id
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The alert policy id. This is mutually exclusive with name
        attribute :id

        # @return [Object, nil] A list of recipient email ids to notify the alert. This is required for state 'present'
        attribute :alert_recipients

        # @return [:cpu, :memory, :disk, nil] The metric on which to measure the condition that will trigger the alert. This is required for state 'present'
        attribute :metric
        validates :metric, expression_inclusion: {:in=>[:cpu, :memory, :disk], :message=>"%{value} needs to be :cpu, :memory, :disk"}, allow_nil: true

        # @return [Object, nil] The length of time in minutes that the condition must exceed the threshold. This is required for state 'present'
        attribute :duration

        # @return [Object, nil] The threshold that will trigger the alert when the metric equals or exceeds it. This is required for state 'present' This number represents a percentage and must be a value between 5.0 - 95.0 that is a multiple of 5.0
        attribute :threshold

        # @return [:present, :absent, nil] Whether to create or delete the policy.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

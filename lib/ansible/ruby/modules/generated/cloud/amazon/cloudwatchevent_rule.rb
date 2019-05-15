# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates and manages CloudWatch event rules and targets.
      class Cloudwatchevent_rule < Base
        # @return [String] The name of the rule you are creating, updating or deleting. No spaces or special characters allowed (i.e. must match C([\.\-_A-Za-z0-9]+))
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A cron or rate expression that defines the schedule the rule will trigger on. For example, C(cron(0 20 * * ? *)), C(rate(5 minutes))
        attribute :schedule_expression
        validates :schedule_expression, type: String

        # @return [Object, nil] A string pattern (in valid JSON format) that is used to match against incoming events to determine if the rule should be triggered
        attribute :event_pattern

        # @return [:present, :disabled, :absent, nil] Whether the rule is present (and enabled), disabled, or absent
        attribute :state
        validates :state, inclusion: {:in=>[:present, :disabled, :absent], :message=>"%{value} needs to be :present, :disabled, :absent"}, allow_nil: true

        # @return [String, nil] A description of the rule
        attribute :description
        validates :description, type: String

        # @return [Object, nil] The Amazon Resource Name (ARN) of the IAM role associated with the rule
        attribute :role_arn

        # @return [Array<Hash>, Hash, nil] A dictionary array of targets to add to or update for the rule, in the form C({ id: [string], arn: [string], role_arn: [string], input: [valid JSON string], input_path: [valid JSONPath string], ecs_parameters: {task_definition_arn: [string], task_count: [int]}}). I(id) [required] is the unique target assignment ID. I(arn) (required) is the Amazon Resource Name associated with the target. I(role_arn) (optional) is The Amazon Resource Name of the IAM role to be used for this target when the rule is triggered. I(input) (optional) is a JSON object that will override the event data when passed to the target.  I(input_path) (optional) is a JSONPath string (e.g. C($.detail)) that specifies the part of the event data to be passed to the target. If neither I(input) nor I(input_path) is specified, then the entire event is passed to the target in JSON form. I(task_definition_arn) [optional] is ecs task definition arn. I(task_count) [optional] is ecs task count.
        attribute :targets
        validates :targets, type: TypeGeneric.new(Hash)
      end
    end
  end
end

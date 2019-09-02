# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # When no given Hook found, will create one.
      # In case Hook found, but provided parameters are differes, will update existing Hook.
      # In case state=absent and Hook exists, will delete it.
      class Ec2_asg_lifecycle_hook < Base
        # @return [:present, :absent, nil] Create or delete Lifecycle Hook. Present updates existing one or creates if not found.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the lifecycle hook.
        attribute :lifecycle_hook_name
        validates :lifecycle_hook_name, presence: true, type: String

        # @return [String] The name of the Auto Scaling group to which you want to assign the lifecycle hook.
        attribute :autoscaling_group_name
        validates :autoscaling_group_name, presence: true, type: String

        # @return [:"autoscaling:EC2_INSTANCE_TERMINATING", :"autoscaling:EC2_INSTANCE_LAUNCHING"] The instance state to which you want to attach the lifecycle hook.
        attribute :transition
        validates :transition, presence: true, expression_inclusion: {:in=>[:"autoscaling:EC2_INSTANCE_TERMINATING", :"autoscaling:EC2_INSTANCE_LAUNCHING"], :message=>"%{value} needs to be :\"autoscaling:EC2_INSTANCE_TERMINATING\", :\"autoscaling:EC2_INSTANCE_LAUNCHING\""}

        # @return [Object, nil] The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
        attribute :role_arn

        # @return [Object, nil] The ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This target can be either an SQS queue or an SNS topic. If you specify an empty string, this overrides the current ARN.
        attribute :notification_target_arn

        # @return [Object, nil] Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
        attribute :notification_meta_data

        # @return [String, nil] The amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling RecordLifecycleActionHeartbeat.
        attribute :heartbeat_timeout
        validates :heartbeat_timeout, type: String

        # @return [:ABANDON, :CONTINUE, nil] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either CONTINUE or ABANDON.
        attribute :default_result
        validates :default_result, expression_inclusion: {:in=>[:ABANDON, :CONTINUE], :message=>"%{value} needs to be :ABANDON, :CONTINUE"}, allow_nil: true
      end
    end
  end
end

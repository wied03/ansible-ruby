# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, updates or removes a Scaling Policy
      class Aws_application_scaling_policy < Base
        # @return [String] The name of the scaling policy.
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [:ecs, :elasticmapreduce, :ec2, :appstream, :dynamodb] The namespace of the AWS service.
        attribute :service_namespace
        validates :service_namespace, presence: true, inclusion: {:in=>[:ecs, :elasticmapreduce, :ec2, :appstream, :dynamodb], :message=>"%{value} needs to be :ecs, :elasticmapreduce, :ec2, :appstream, :dynamodb"}

        # @return [String] The identifier of the resource associated with the scalable target.
        attribute :resource_id
        validates :resource_id, presence: true, type: String

        # @return [:"ecs:service:DesiredCount", :"ec2:spot-fleet-request:TargetCapacity", :"elasticmapreduce:instancegroup:InstanceCount", :"appstream:fleet:DesiredCapacity", :"dynamodb:table:ReadCapacityUnits", :"dynamodb:table:WriteCapacityUnits", :"dynamodb:index:ReadCapacityUnits", :"dynamodb:index:WriteCapacityUnits"] The scalable dimension associated with the scalable target.
        attribute :scalable_dimension
        validates :scalable_dimension, presence: true, inclusion: {:in=>[:"ecs:service:DesiredCount", :"ec2:spot-fleet-request:TargetCapacity", :"elasticmapreduce:instancegroup:InstanceCount", :"appstream:fleet:DesiredCapacity", :"dynamodb:table:ReadCapacityUnits", :"dynamodb:table:WriteCapacityUnits", :"dynamodb:index:ReadCapacityUnits", :"dynamodb:index:WriteCapacityUnits"], :message=>"%{value} needs to be :\"ecs:service:DesiredCount\", :\"ec2:spot-fleet-request:TargetCapacity\", :\"elasticmapreduce:instancegroup:InstanceCount\", :\"appstream:fleet:DesiredCapacity\", :\"dynamodb:table:ReadCapacityUnits\", :\"dynamodb:table:WriteCapacityUnits\", :\"dynamodb:index:ReadCapacityUnits\", :\"dynamodb:index:WriteCapacityUnits\""}

        # @return [:StepScaling, :TargetTrackingScaling] The policy type.
        attribute :policy_type
        validates :policy_type, presence: true, inclusion: {:in=>[:StepScaling, :TargetTrackingScaling], :message=>"%{value} needs to be :StepScaling, :TargetTrackingScaling"}

        # @return [Hash, nil] A step scaling policy. This parameter is required if you are creating a policy and the policy type is StepScaling.
        attribute :step_scaling_policy_configuration
        validates :step_scaling_policy_configuration, type: Hash

        # @return [Hash, nil] A target tracking policy. This parameter is required if you are creating a new policy and the policy type is TargetTrackingScaling.
        attribute :target_tracking_scaling_policy_configuration
        validates :target_tracking_scaling_policy_configuration, type: Hash

        # @return [Integer, nil] The minimum value to scale to in response to a scale in event. This parameter is required if you are creating a first new policy for the specified service.
        attribute :minimum_tasks
        validates :minimum_tasks, type: Integer

        # @return [Integer, nil] The maximum value to scale to in response to a scale out event. This parameter is required if you are creating a first new policy for the specified service.
        attribute :maximum_tasks
        validates :maximum_tasks, type: Integer

        # @return [Symbol, nil] Whether or not to override values of minimum and/or maximum tasks if it's already set.
        attribute :override_task_capacity
        validates :override_task_capacity, type: Symbol
      end
    end
  end
end

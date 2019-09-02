# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Batch Compute Environments. It is idempotent and supports "Check" mode.  Use module M(aws_batch_compute_environment) to manage the compute environment, M(aws_batch_job_queue) to manage job queues, M(aws_batch_job_definition) to manage job definitions.
      class Aws_batch_compute_environment < Base
        # @return [Object] The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed.
        attribute :compute_environment_name
        validates :compute_environment_name, presence: true

        # @return [:MANAGED, :UNMANAGED] The type of the compute environment.
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:MANAGED, :UNMANAGED], :message=>"%{value} needs to be :MANAGED, :UNMANAGED"}

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:ENABLED, :DISABLED, nil] The state of the compute environment. If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
        attribute :compute_environment_state
        validates :compute_environment_state, expression_inclusion: {:in=>[:ENABLED, :DISABLED], :message=>"%{value} needs to be :ENABLED, :DISABLED"}, allow_nil: true

        # @return [Object] The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
        attribute :service_role
        validates :service_role, presence: true

        # @return [:EC2, :SPOT] The type of compute resource.
        attribute :compute_resource_type
        validates :compute_resource_type, presence: true, expression_inclusion: {:in=>[:EC2, :SPOT], :message=>"%{value} needs to be :EC2, :SPOT"}

        # @return [Object] The minimum number of EC2 vCPUs that an environment should maintain.
        attribute :minv_cpus
        validates :minv_cpus, presence: true

        # @return [Object] The maximum number of EC2 vCPUs that an environment can reach.
        attribute :maxv_cpus
        validates :maxv_cpus, presence: true

        # @return [Object, nil] The desired number of EC2 vCPUS in the compute environment.
        attribute :desiredv_cpus

        # @return [Object] The instance types that may be launched.
        attribute :instance_types
        validates :instance_types, presence: true

        # @return [Object, nil] The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.
        attribute :image_id

        # @return [Object] The VPC subnets into which the compute resources are launched.
        attribute :subnets
        validates :subnets, presence: true

        # @return [Object] The EC2 security groups that are associated with instances launched in the compute environment.
        attribute :security_group_ids
        validates :security_group_ids, presence: true

        # @return [Object, nil] The EC2 key pair that is used for instances launched in the compute environment.
        attribute :ec2_key_pair

        # @return [Object] The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment.
        attribute :instance_role
        validates :instance_role, presence: true

        # @return [Object, nil] Key-value pair tags to be applied to resources that are launched in the compute environment.
        attribute :tags

        # @return [Object, nil] The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.
        attribute :bid_percentage

        # @return [Object, nil] The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment.
        attribute :spot_iam_fleet_role
      end
    end
  end
end

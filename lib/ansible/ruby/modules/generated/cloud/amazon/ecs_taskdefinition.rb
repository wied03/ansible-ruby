# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Registers or deregisters task definitions in the Amazon Web Services (AWS) EC2 Container Service (ECS)
      class Ecs_taskdefinition < Base
        # @return [:present, :absent] State whether the task definition should exist or be deleted
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] The arn of the task description to delete
        attribute :arn

        # @return [String, nil] A Name that would be given to the task definition
        attribute :family
        validates :family, type: String

        # @return [Object, nil] A revision number for the task definition
        attribute :revision

        # @return [Object, nil] Always create new task definition
        attribute :force_create

        # @return [Array<Hash>, Hash, nil] A list of containers definitions
        attribute :containers
        validates :containers, type: TypeGeneric.new(Hash)

        # @return [:bridge, :host, :none, :awsvpc, nil] The Docker networking mode to use for the containers in the task.,C(awsvpc) mode was added in Ansible 2.5
        attribute :network_mode
        validates :network_mode, expression_inclusion: {:in=>[:bridge, :host, :none, :awsvpc], :message=>"%{value} needs to be :bridge, :host, :none, :awsvpc"}, allow_nil: true

        # @return [Object, nil] The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
        attribute :task_role_arn

        # @return [Object, nil] The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
        attribute :execution_role_arn

        # @return [Array<Hash>, Hash, nil] A list of names of volumes to be attached
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Hash)

        # @return [:EC2, :FARGATE, nil] The launch type on which to run your task
        attribute :launch_type
        validates :launch_type, expression_inclusion: {:in=>[:EC2, :FARGATE], :message=>"%{value} needs to be :EC2, :FARGATE"}, allow_nil: true

        # @return [Integer, nil] The number of cpu units used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and you must use one of [256, 512, 1024, 2048, 4096]
        attribute :cpu
        validates :cpu, type: Integer

        # @return [String, nil] The amount (in MiB) of memory used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and is limited by the cpu
        attribute :memory
        validates :memory, type: String
      end
    end
  end
end

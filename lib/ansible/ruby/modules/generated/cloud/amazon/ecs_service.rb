# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or terminates ecs services.
      class Ecs_service < Base
        # @return [:present, :absent, :deleting] The desired state of the service
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :deleting], :message=>"%{value} needs to be :present, :absent, :deleting"}

        # @return [String] The name of the service
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the cluster in which the service exists
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The task definition the service will run. This parameter is required when state=present
        attribute :task_definition
        validates :task_definition, type: String

        # @return [Object, nil] The list of ELBs defined for this service
        attribute :load_balancers

        # @return [Integer, nil] The count of how many instances of the service. This parameter is required when state=present
        attribute :desired_count
        validates :desired_count, type: Integer

        # @return [Object, nil] Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.
        attribute :client_token

        # @return [Object, nil] The name or full Amazon Resource Name (ARN) of the IAM role that allows your Amazon ECS container agent to make calls to your load balancer on your behalf. This parameter is only required if you are using a load balancer with your service, in a network mode other than `awsvpc`.
        attribute :role

        # @return [Integer, nil] The time to wait before checking that the service is available
        attribute :delay
        validates :delay, type: Integer

        # @return [Integer, nil] The number of times to check that the service is available
        attribute :repeat
        validates :repeat, type: Integer

        # @return [Hash, nil] Optional parameters that control the deployment_configuration; format is '{"maximum_percent":<integer>, "minimum_healthy_percent":<integer>}
        attribute :deployment_configuration
        validates :deployment_configuration, type: Hash

        # @return [Array<Hash>, Hash, nil] The placement constraints for the tasks in the service
        attribute :placement_constraints
        validates :placement_constraints, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service
        attribute :placement_strategy
        validates :placement_strategy, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] network configuration of the service. Only applicable for task definitions created with C(awsvpc) I(network_mode).,assign_public_ip requires botocore >= 1.8.4
        attribute :network_configuration
        validates :network_configuration, type: Hash

        # @return [:EC2, :FARGATE, nil] The launch type on which to run your service
        attribute :launch_type
        validates :launch_type, inclusion: {:in=>[:EC2, :FARGATE], :message=>"%{value} needs to be :EC2, :FARGATE"}, allow_nil: true
      end
    end
  end
end

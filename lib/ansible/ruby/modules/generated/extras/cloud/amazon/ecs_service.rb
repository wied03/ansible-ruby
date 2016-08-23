# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_service < Base
        # @return [:present, :absent, :deleting] The desired state of the service
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :deleting], :message=>"%{value} needs to be :present, :absent, :deleting"}

        # @return [String] The name of the service
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name of the cluster in which the service exists
        attribute :cluster
        validates :cluster, type: String

        # @return [String] The task definition the service will run
        attribute :task_definition
        validates :task_definition, type: String

        # @return [Object] The list of ELBs defined for this service
        attribute :load_balancers

        # @return [Fixnum] The count of how many instances of the service
        attribute :desired_count
        validates :desired_count, type: Fixnum

        # @return [Object] Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.
        attribute :client_token

        # @return [Object] The name or full Amazon Resource Name (ARN) of the IAM role that allows your Amazon ECS container agent to make calls to your load balancer on your behalf. This parameter is only required if you are using a load balancer with your service.
        attribute :role

        # @return [Fixnum] The time to wait before checking that the service is available
        attribute :delay
        validates :delay, type: Fixnum

        # @return [Fixnum] The number of times to check that the service is available
        attribute :repeat
        validates :repeat, type: Fixnum
      end
    end
  end
end

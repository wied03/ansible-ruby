# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_task < Base
        # @return [:run, :start, :stop] Which task operation to execute
        attribute :operation
        validates :operation, presence: true, inclusion: {:in=>[:run, :start, :stop], :message=>"%{value} needs to be :run, :start, :stop"}

        # @return [String, nil] The name of the cluster to run the task on
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The task definition to start or run
        attribute :task_definition
        validates :task_definition, type: String

        # @return [Object, nil] A dictionary of values to pass to the new instances
        attribute :overrides

        # @return [Integer, nil] How many new instances to start
        attribute :count
        validates :count, type: Integer

        # @return [String, nil] The task to stop
        attribute :task
        validates :task, type: String

        # @return [Array, nil] The list of container instances on which to deploy the task
        attribute :container_instances
        validates :container_instances, type: Array

        # @return [String, nil] A value showing who or what started the task (for informational purposes)
        attribute :started_by
        validates :started_by, type: String
      end
    end
  end
end

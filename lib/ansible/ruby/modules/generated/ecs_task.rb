# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_task < Base
        # @return [String] Which task operation to execute
        attribute :operation
        validates :operation, presence: true, inclusion: {:in=>[:run, :start, :stop], :message=>"%{value} needs to be :run, :start, :stop"}

        # @return [String] The name of the cluster to run the task on
        attribute :cluster
        validates :cluster, type: String

        # @return [String] The task definition to start or run
        attribute :task_definition
        validates :task_definition, type: String

        # @return [Object] A dictionary of values to pass to the new instances
        attribute :overrides

        # @return [Fixnum] How many new instances to start
        attribute :count
        validates :count, type: Fixnum

        # @return [String] The task to stop
        attribute :task
        validates :task, type: String

        # @return [Array] The list of container instances on which to deploy the task
        attribute :container_instances
        validates :container_instances, type: Array

        # @return [String] A value showing who or what started the task (for informational purposes)
        attribute :started_by
        validates :started_by, type: String
      end
    end
  end
end

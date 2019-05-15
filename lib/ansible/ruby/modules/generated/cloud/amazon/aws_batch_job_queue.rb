# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Batch Job Queues. It is idempotent and supports "Check" mode.  Use module M(aws_batch_compute_environment) to manage the compute environment, M(aws_batch_job_queue) to manage job queues, M(aws_batch_job_definition) to manage job definitions.
      class Aws_batch_job_queue < Base
        # @return [Object] The name for the job queue
        attribute :job_queue_name
        validates :job_queue_name, presence: true

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:ENABLED, :DISABLED, nil] The state of the job queue. If the job queue state is ENABLED , it is able to accept jobs.
        attribute :job_queue_state
        validates :job_queue_state, inclusion: {:in=>[:ENABLED, :DISABLED], :message=>"%{value} needs to be :ENABLED, :DISABLED"}, allow_nil: true

        # @return [Object] The priority of the job queue. Job queues with a higher priority (or a lower integer value for the priority parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of 1 is given scheduling preference over a job queue with a priority value of 10.
        attribute :priority
        validates :priority, presence: true

        # @return [Object] The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to 3 compute environments with a job queue.
        attribute :compute_environment_order
        validates :compute_environment_order, presence: true
      end
    end
  end
end

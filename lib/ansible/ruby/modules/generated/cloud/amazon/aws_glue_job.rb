# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS Glue job. See U(https://aws.amazon.com/glue/) for details.
      class Aws_glue_job < Base
        # @return [Object, nil] The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
        attribute :allocated_capacity

        # @return [String, nil] The name of the job command. This must be 'glueetl'.
        attribute :command_name
        validates :command_name, type: String

        # @return [String] The S3 path to a script that executes a job.
        attribute :command_script_location
        validates :command_script_location, presence: true, type: String

        # @return [Object, nil] A list of Glue connections used for this job.
        attribute :connections

        # @return [Object, nil] A dict of default arguments for this job.  You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
        attribute :default_arguments

        # @return [Object, nil] Description of the job being defined.
        attribute :description

        # @return [Object, nil] The maximum number of concurrent runs allowed for the job. The default is 1. An error is returned when this threshold is reached. The maximum value you can specify is controlled by a service limit.
        attribute :max_concurrent_runs

        # @return [Object, nil] The maximum number of times to retry this job if it fails.
        attribute :max_retries

        # @return [String] The name you assign to this job definition. It must be unique in your account.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name or ARN of the IAM role associated with this job.
        attribute :role
        validates :role, presence: true, type: String

        # @return [:present, :absent] Create or delete the AWS Glue job.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] The job timeout in minutes.
        attribute :timeout
      end
    end
  end
end

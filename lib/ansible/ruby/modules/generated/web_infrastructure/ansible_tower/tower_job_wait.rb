# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Wait for Ansible Tower job to finish and report success or failure. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_wait < Base
        # @return [String] ID of the job to monitor.
        attribute :job_id
        validates :job_id, presence: true, type: String

        # @return [Integer, nil] Minimum interval in seconds, to request an update from Tower.
        attribute :min_interval
        validates :min_interval, type: Integer

        # @return [Integer, nil] Maximum interval in seconds, to request an update from Tower.
        attribute :max_interval
        validates :max_interval, type: Integer

        # @return [Integer, nil] Maximum time in seconds to wait for a job to finish.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end

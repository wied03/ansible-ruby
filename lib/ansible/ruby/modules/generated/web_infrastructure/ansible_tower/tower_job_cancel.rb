# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Cancel Ansible Tower jobs. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_cancel < Base
        # @return [String] ID of the job to cancel
        attribute :job_id
        validates :job_id, presence: true, type: String

        # @return [Boolean, nil] Fail loudly if the I(job_id) does not reference a running job.
        attribute :fail_if_not_running
        validates :fail_if_not_running, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

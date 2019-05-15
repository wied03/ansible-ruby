# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Delete/Modify_minute job-schedules on ONTAP
      class Na_ontap_job_schedule < Base
        # @return [:present, :absent, nil] Whether the specified job schedule should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the job-schedule to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The minute(s) of each hour when the job should be run. Job Manager cron scheduling minute. -1 represents all minutes and only supported for cron schedule create and modify. Range is [-1..59]
        attribute :job_minutes
        validates :job_minutes, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_scheduler) module adds or removes schedules using the proxysql admin interface.
      class Proxysql_scheduler < Base
        # @return [Boolean, nil] A schedule with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures.
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How often (in millisecond) the job will be started. The minimum value for I(interval_ms) is 100 milliseconds.
        attribute :interval_ms
        validates :interval_ms, type: Integer

        # @return [String] Full path of the executable to be executed.
        attribute :filename
        validates :filename, presence: true, type: String

        # @return [Object, nil] Argument that can be passed to the job.
        attribute :arg1

        # @return [Object, nil] Argument that can be passed to the job.
        attribute :arg2

        # @return [Object, nil] Argument that can be passed to the job.
        attribute :arg3

        # @return [Object, nil] Argument that can be passed to the job.
        attribute :arg4

        # @return [Object, nil] Argument that can be passed to the job.
        attribute :arg5

        # @return [Object, nil] Text field that can be used for any purposed defined by the user.
        attribute :comment

        # @return [:present, :absent, nil] When C(present) - adds the schedule, when C(absent) - removes the schedule.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] By default we avoid deleting more than one schedule in a single batch, however if you need this behaviour and you're not concerned about the schedules deleted, you can set I(force_delete) to C(True).
        attribute :force_delete
        validates :force_delete, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

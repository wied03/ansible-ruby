# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update accounts on SolidFire
      class Sf_snapshot_schedule_manager < Base
        # @return [:present, :absent] Whether the specified schedule should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] Pause / Resume a schedule.
        attribute :paused

        # @return [Boolean, nil] Should the schedule recur?
        attribute :recurring
        validates :recurring, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Time interval in days.
        attribute :time_interval_days
        validates :time_interval_days, type: Integer

        # @return [Integer, nil] Time interval in hours.
        attribute :time_interval_hours
        validates :time_interval_hours, type: Integer

        # @return [Integer, nil] Time interval in minutes.
        attribute :time_interval_minutes
        validates :time_interval_minutes, type: Integer

        # @return [String] Name for the snapshot schedule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name for the created snapshots.
        attribute :snapshot_name
        validates :snapshot_name, type: String

        # @return [Integer, nil] Volume IDs that you want to set the snapshot schedule for.,At least 1 volume ID is required for creating a new schedule.,required when C(state=present)
        attribute :volumes
        validates :volumes, type: Integer

        # @return [Object, nil] Retention period for the snapshot.,Format is 'HH:mm:ss'.
        attribute :retention

        # @return [Integer, nil] The schedule ID for the schedule that you want to update or delete.
        attribute :schedule_id
        validates :schedule_id, type: Integer

        # @return [String, nil] Starting date for the schedule.,Required when C(state=present).,Please use two '-' in the above format, or you may see an error- TypeError, is not JSON serializable description.,Format: C(2016--12--01T00:00:00Z)
        attribute :starting_date
        validates :starting_date, type: String
      end
    end
  end
end

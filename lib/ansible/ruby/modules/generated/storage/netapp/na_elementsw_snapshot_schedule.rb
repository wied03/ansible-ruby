# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update accounts on ElementSW
      class Na_elementsw_snapshot_schedule < Base
        # @return [:present, :absent] Whether the specified schedule should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] Pause / Resume a schedule.
        attribute :paused

        # @return [Object, nil] Should the schedule recur?
        attribute :recurring

        # @return [:DaysOfWeekFrequency, :DaysOfMonthFrequency, :TimeIntervalFrequency, nil] Schedule type for creating schedule.
        attribute :schedule_type
        validates :schedule_type, inclusion: {:in=>[:DaysOfWeekFrequency, :DaysOfMonthFrequency, :TimeIntervalFrequency], :message=>"%{value} needs to be :DaysOfWeekFrequency, :DaysOfMonthFrequency, :TimeIntervalFrequency"}, allow_nil: true

        # @return [Integer, nil] Time interval in days.
        attribute :time_interval_days
        validates :time_interval_days, type: Integer

        # @return [Integer, nil] Time interval in hours.
        attribute :time_interval_hours
        validates :time_interval_hours, type: Integer

        # @return [Integer, nil] Time interval in minutes.
        attribute :time_interval_minutes
        validates :time_interval_minutes, type: Integer

        # @return [Object, nil] List of days of the week (Sunday to Saturday)
        attribute :days_of_week_weekdays

        # @return [Integer, nil] Time specified in hours
        attribute :days_of_week_hours
        validates :days_of_week_hours, type: Integer

        # @return [Integer, nil] Time specified in minutes.
        attribute :days_of_week_minutes
        validates :days_of_week_minutes, type: Integer

        # @return [Object, nil] List of days of the month (1-31)
        attribute :days_of_month_monthdays

        # @return [Integer, nil] Time specified in hours
        attribute :days_of_month_hours
        validates :days_of_month_hours, type: Integer

        # @return [Integer, nil] Time specified in minutes.
        attribute :days_of_month_minutes
        validates :days_of_month_minutes, type: Integer

        # @return [String, Integer, nil] Name for the snapshot schedule.,It accepts either schedule_id or schedule_name,if name is digit, it will consider as schedule_id,If name is string, it will consider as schedule_name
        attribute :name
        validates :name, type: MultipleTypes.new(String, Integer)

        # @return [Object, nil] Name for the created snapshots.
        attribute :snapshot_name

        # @return [Array<Integer>, Integer, nil] Volume IDs that you want to set the snapshot schedule for.,It accepts both volume_name and volume_id
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Integer)

        # @return [Integer, nil] Account ID for the owner of this volume.,It accepts either account_name or account_id,if account_id is digit, it will consider as account_id,If account_id is string, it will consider as account_name
        attribute :account_id
        validates :account_id, type: Integer

        # @return [Object, nil] Retention period for the snapshot.,Format is 'HH:mm:ss'.
        attribute :retention

        # @return [String, nil] Starting date for the schedule.,Required when C(state=present).,Format: C(2016-12-01T00:00:00Z)
        attribute :starting_date
        validates :starting_date, type: String

        # @return [String, nil] Element SW access account password
        attribute :password
        validates :password, type: String

        # @return [String, nil] Element SW access account user-name
        attribute :username
        validates :username, type: String
      end
    end
  end
end

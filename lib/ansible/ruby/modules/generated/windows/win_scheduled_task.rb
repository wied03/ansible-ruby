# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage scheduled tasks
      class Win_scheduled_task < Base
        # @return [String] Name of the scheduled task
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description for the scheduled task
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Enable/disable the task
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] State that the task should become
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] User to run scheduled task as
        attribute :user
        validates :user, type: String

        # @return [String, nil] Command the scheduled task should execute
        attribute :executable
        validates :executable, type: String

        # @return [String, nil] Arguments to provide scheduled task action
        attribute :arguments
        validates :arguments, type: String

        # @return [:once, :daily, :weekly, nil] The frequency of the command, not idempotent
        attribute :frequency
        validates :frequency, inclusion: {:in=>[:once, :daily, :weekly], :message=>"%{value} needs to be :once, :daily, :weekly"}, allow_nil: true

        # @return [String, nil] Time to execute scheduled task, not idempotent
        attribute :time
        validates :time, type: String

        # @return [Object, nil] Days of the week to run a weekly task, not idempotent
        attribute :days_of_week

        # @return [String, nil] Task folder in which this task will be stored
        attribute :path
        validates :path, type: String
      end
    end
  end
end

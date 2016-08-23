# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_scheduled_task < Base
        # @return [Object] Name of the scheduled task
        attribute :name
        validates :name, presence: true

        # @return [Object] The description for the scheduled task
        attribute :description

        # @return [Boolean, nil] Enable/disable the task
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] State that the task should become
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] User to run scheduled task as
        attribute :user

        # @return [Object] Command the scheduled task should execute
        attribute :execute

        # @return [Object] Arguments to provide scheduled task action
        attribute :argument

        # @return [:daily, :weekly, nil] The frequency of the command, not idempotent
        attribute :frequency
        validates :frequency, inclusion: {:in=>[:daily, :weekly], :message=>"%{value} needs to be :daily, :weekly"}, allow_nil: true

        # @return [Object] Time to execute scheduled task, not idempotent
        attribute :time

        # @return [Object] Days of the week to run a weekly task, not idempotent
        attribute :days_of_week

        # @return [String] Folder path of scheduled task
        attribute :path
        validates :path, type: String
      end
    end
  end
end

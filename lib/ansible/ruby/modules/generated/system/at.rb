# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use this module to schedule a command or script file to run once in the future.
      # All jobs are executed in the 'a' queue.
      class At < Base
        # @return [String, nil] A command to be executed in the future.
        attribute :command
        validates :command, type: String

        # @return [Object, nil] An existing script file to be executed in the future.
        attribute :script_file

        # @return [Integer] The count of units in the future to execute the command or script file.
        attribute :count
        validates :count, presence: true, type: Integer

        # @return [:minutes, :hours, :days, :weeks] The type of units in the future to execute the command or script file.
        attribute :units
        validates :units, presence: true, inclusion: {:in=>[:minutes, :hours, :days, :weeks], :message=>"%{value} needs to be :minutes, :hours, :days, :weeks"}

        # @return [:absent, :present, nil] The state dictates if the command or script file should be evaluated as present(added) or absent(deleted).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] If a matching job is present a new job will not be added.
        attribute :unique
        validates :unique, type: String
      end
    end
  end
end

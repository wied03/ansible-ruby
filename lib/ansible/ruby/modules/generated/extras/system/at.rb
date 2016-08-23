# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class At < Base
        # @return [String] A command to be executed in the future.
        attribute :command
        validates :command, type: String

        # @return [Object] An existing script file to be executed in the future.
        attribute :script_file

        # @return [String] The count of units in the future to execute the command or script file.
        attribute :count
        validates :count, presence: true, type: String

        # @return [:minutes, :hours, :days, :weeks] The type of units in the future to execute the command or script file.
        attribute :units
        validates :units, presence: true, inclusion: {:in=>[:minutes, :hours, :days, :weeks], :message=>"%{value} needs to be :minutes, :hours, :days, :weeks"}

        # @return [:present, :absent, nil] The state dictates if the command or script file should be evaluated as present(added) or absent(deleted).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] If a matching job is present a new job will not be added.
        attribute :unique
        validates :unique, type: String
      end
    end
  end
end

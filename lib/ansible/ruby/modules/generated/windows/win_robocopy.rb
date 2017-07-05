# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Synchronizes the contents of two directories on the remote machine. Under the hood this just calls out to RoboCopy, since that should be available on most modern Windows Systems.
      class Win_robocopy < Base
        # @return [String] Source file/directory to sync.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Destination file/directory to sync (Will receive contents of src).
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Boolean, nil] Includes all subdirectories (Toggles the `/e` flag to RoboCopy). If "flags" is set, this will be ignored.
        attribute :recurse
        validates :recurse, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Deletes any files/directories found in the destination that do not exist in the source (Toggles the `/purge` flag to RoboCopy). If "flags" is set, this will be ignored.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Directly supply Robocopy flags. If set, purge and recurse will be ignored.
        attribute :flags
        validates :flags, type: String
      end
    end
  end
end

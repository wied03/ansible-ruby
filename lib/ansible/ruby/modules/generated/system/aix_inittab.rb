# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages the inittab on AIX.
      class Aix_inittab < Base
        # @return [String] Name of the inittab entry.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Runlevel of the entry.
        attribute :runlevel
        validates :runlevel, presence: true, type: Integer

        # @return [:respawn, :wait, :once, :boot, :bootwait, :powerfail, :powerwait, :off, :hold, :ondemand, :initdefault, :sysinit] Action what the init has to do with this entry.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:respawn, :wait, :once, :boot, :bootwait, :powerfail, :powerwait, :off, :hold, :ondemand, :initdefault, :sysinit], :message=>"%{value} needs to be :respawn, :wait, :once, :boot, :bootwait, :powerfail, :powerwait, :off, :hold, :ondemand, :initdefault, :sysinit"}

        # @return [String] What command has to run.
        attribute :command
        validates :command, presence: true, type: String

        # @return [String, nil] After which inittabline should the new entry inserted.
        attribute :insertafter
        validates :insertafter, type: String

        # @return [:present, :absent, nil] Whether the entry should be present or absent in the inittab file
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

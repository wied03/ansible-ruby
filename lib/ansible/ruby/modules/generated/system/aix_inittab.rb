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

        # @return [:boot, :bootwait, :hold, :initdefault, false, :once, :ondemand, :powerfail, :powerwait, :respawn, :sysinit, :wait] Action what the init has to do with this entry.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:boot, :bootwait, :hold, :initdefault, false, :once, :ondemand, :powerfail, :powerwait, :respawn, :sysinit, :wait], :message=>"%{value} needs to be :boot, :bootwait, :hold, :initdefault, false, :once, :ondemand, :powerfail, :powerwait, :respawn, :sysinit, :wait"}

        # @return [String] What command has to run.
        attribute :command
        validates :command, presence: true, type: String

        # @return [String, nil] After which inittabline should the new entry inserted.
        attribute :insertafter
        validates :insertafter, type: String

        # @return [:absent, :present, nil] Whether the entry should be present or absent in the inittab file.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Run commands (remotely) through the PsExec service
      # Run commands as another (domain) user (with elevated privileges)
      class Win_psexec < Base
        # @return [String] The command line to run through PsExec (limited to 260 characters).
        attribute :command
        validates :command, presence: true, type: String

        # @return [String, nil] The location of the PsExec utility (in case it is not located in your PATH).
        attribute :executable
        validates :executable, type: String

        # @return [Array<String>, String, nil] The hostnames to run the command.,If not provided, the command is run locally.
        attribute :hostnames
        validates :hostnames, type: TypeGeneric.new(String)

        # @return [String, nil] The (remote) user to run the command as.,If not provided, the current user is used.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password for the (remote) user to run the command as.,This is mandatory in order authenticate yourself.
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Run the command from this (remote) directory.
        attribute :chdir

        # @return [Boolean, nil] Run the command without loading the account's profile.
        attribute :noprofile
        validates :noprofile, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run the command with elevated privileges.
        attribute :elevated
        validates :elevated, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run the program so that it interacts with the desktop on the remote system.
        attribute :interactive
        validates :interactive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run the command as limited user (strips the Administrators group and allows only privileges assigned to the Users group).
        attribute :limited
        validates :limited, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run the remote command in the System account.
        attribute :system
        validates :system, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:background, :low, :belownormal, :abovenormal, :high, :realtime, nil] Used to run the command at a different priority.
        attribute :priority
        validates :priority, inclusion: {:in=>[:background, :low, :belownormal, :abovenormal, :high, :realtime], :message=>"%{value} needs to be :background, :low, :belownormal, :abovenormal, :high, :realtime"}, allow_nil: true

        # @return [Object, nil] The connection timeout in seconds
        attribute :timeout

        # @return [Boolean, nil] Wait for the application to terminate.,Only use for non-interactive applications.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

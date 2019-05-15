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

        # @return [String, nil] Do not display the startup banner and copyright message.,This only works for specific versions of the PsExec binary.
        attribute :nobanner
        validates :nobanner, type: String

        # @return [String, nil] Run the command without loading the account's profile.
        attribute :noprofile
        validates :noprofile, type: String

        # @return [String, nil] Run the command with elevated privileges.
        attribute :elevated
        validates :elevated, type: String

        # @return [String, nil] Run the program so that it interacts with the desktop on the remote system.
        attribute :interactive
        validates :interactive, type: String

        # @return [Object, nil] Specifies the session ID to use.,This parameter works in conjunction with I(interactive).,It has no effect when I(interactive) is set to C(no).
        attribute :session

        # @return [String, nil] Run the command as limited user (strips the Administrators group and allows only privileges assigned to the Users group).
        attribute :limited
        validates :limited, type: String

        # @return [String, nil] Run the remote command in the System account.
        attribute :system
        validates :system, type: String

        # @return [:background, :low, :belownormal, :abovenormal, :high, :realtime, nil] Used to run the command at a different priority.
        attribute :priority
        validates :priority, inclusion: {:in=>[:background, :low, :belownormal, :abovenormal, :high, :realtime], :message=>"%{value} needs to be :background, :low, :belownormal, :abovenormal, :high, :realtime"}, allow_nil: true

        # @return [Object, nil] The connection timeout in seconds
        attribute :timeout

        # @return [String, nil] Wait for the application to terminate.,Only use for non-interactive applications.
        attribute :wait
        validates :wait, type: String
      end
    end
  end
end

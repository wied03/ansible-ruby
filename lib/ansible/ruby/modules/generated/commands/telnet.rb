# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Executes a low-down and dirty telnet command, not going through the module subsystem.
      # This is mostly to be used for enabling ssh on devices that only have telnet enabled by default.
      class Telnet < Base
        # @return [Array<String>, String] List of commands to be executed in the telnet session.
        attribute :command
        validates :command, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] The host/target on which to execute the command
        attribute :host
        validates :host, type: String

        # @return [String, nil] The user for login
        attribute :user
        validates :user, type: String

        # @return [String, nil] The password for login
        attribute :password
        validates :password, type: String

        # @return [Integer, nil] Remote port to use
        attribute :port
        validates :port, type: Integer

        # @return [Integer, nil] timeout for remote operations
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] List of prompts expected before sending next command
        attribute :prompts
        validates :prompts, type: String

        # @return [String, nil] Login or username prompt to expect
        attribute :login_prompt
        validates :login_prompt, type: String

        # @return [String, nil] Login or username prompt to expect
        attribute :password_prompt
        validates :password_prompt, type: String

        # @return [Integer, nil] Seconds to pause between each command issued
        attribute :pause
        validates :pause, type: Integer

        # @return [Boolean, nil] Sends a newline character upon successful connection to start the terminal session.
        attribute :send_newline
        validates :send_newline, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

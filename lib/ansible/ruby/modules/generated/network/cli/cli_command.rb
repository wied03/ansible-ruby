# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends a command to a network device and returns the result read from the device.
      class Cli_command < Base
        # @return [String] The command to send to the remote network device.  The resulting output from the command is returned, unless I(sendonly) is set.
        attribute :command
        validates :command, presence: true, type: String

        # @return [Array<String>, String, nil] A single regex pattern or a sequence of patterns to evaluate the expected prompt from I(command).
        attribute :prompt
        validates :prompt, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The answer to reply with if I(prompt) is matched. The value can be a single answer or a list of answer for multiple prompts. In case the command execution results in multiple prompts the sequence of the prompt and excepted answer should be in same order.
        attribute :answer
        validates :answer, type: TypeGeneric.new(String)

        # @return [Symbol, nil] The boolean value, that when set to true will send I(command) to the device but not wait for a result.
        attribute :sendonly
        validates :sendonly, type: Symbol

        # @return [Symbol, nil] By default if any one of the prompts mentioned in C(prompt) option is matched it won't check for other prompts. This boolean flag, that when set to I(True) will check for all the prompts mentioned in C(prompt) option in the given order. If the option is set to I(True) all the prompts should be received from remote host if not it will result in timeout.
        attribute :check_all
        validates :check_all, type: Symbol
      end
    end
  end
end

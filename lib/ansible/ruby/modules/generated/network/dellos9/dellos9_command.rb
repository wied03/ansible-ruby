# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends arbitrary commands to a Dell OS9 node and returns the results read from the device. This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.
      # This module does not support running commands in configuration mode. Please use M(dellos9_config) to configure Dell OS9 devices.
      class Dellos9_command < Base
        # @return [Array<String>, String] List of commands to send to the remote dellos9 device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.
        attribute :commands
        validates :commands, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of I(retries), the task fails. See examples.
        attribute :wait_for
        validates :wait_for, type: TypeGeneric.new(String)

        # @return [:any, :all, nil] The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:any, :all], :message=>"%{value} needs to be :any, :all"}, allow_nil: true

        # @return [Integer, nil] Specifies the number of retries a command should be tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an arbitrary command to an HUAWEI CloudEngine node and returns the results read from the device.  The ce_command module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.
      class Ce_command < Base
        # @return [Object] The commands to send to the remote HUAWEI CloudEngine device over the configured provider.  The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.
        attribute :commands
        validates :commands, presence: true

        # @return [Object, nil] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.
        attribute :wait_for

        # @return [String, nil] The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.
        attribute :match
        validates :match, type: String

        # @return [Integer, nil] Specifies the number of retries a command should by tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Iosxr_command < Base
        # @return [Array] List of commands to send to the remote ios device over the configured provider. The resulting output from the command is returned. If the I(waitfor) argument is provided, the module is not returned until the condition is satisfied or the number of retires as expired.
        attribute :commands
        validates :commands, presence: true, type: Array

        # @return [Array, nil] List of conditions to evaluate against the output of the command. The task will wait for a each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.
        attribute :waitfor
        validates :waitfor, type: Array

        # @return [Integer, nil] Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the waitfor conditions.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

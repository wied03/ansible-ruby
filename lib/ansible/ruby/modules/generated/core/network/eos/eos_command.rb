# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Eos_command < Base
        # @return [Array] The commands to send to the remote EOS device over the configured provider.  The resulting output from the command is returned.  If the I(waitfor) argument is provided, the module is not returned until the condition is satisfied or the number of retries has been exceeded.
        attribute :commands
        validates :commands, presence: true, type: Array

        # @return [Array, nil] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.
        attribute :waitfor
        validates :waitfor, type: Array

        # @return [Integer, nil] Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the waitfor conditionals
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

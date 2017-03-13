# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The command module allows running one or more commands on remote devices running VyOS.  This module can also be introspected to validate key parameters before returning successfully.  If the conditional statements are not met in the wait period, the task fails.
      class Vyos_command < Base
        # @return [Array<String>, String] The ordered set of commands to execute on the remote device running VyOS.  The output from the command execution is returned to the playbook.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has been exceeded.
        attribute :commands
        validates :commands, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured I(retries), the task fails.  See examples.
        attribute :wait_for
        validates :wait_for, type: TypeGeneric.new(String)

        # @return [:any, :all, nil] The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.
        attribute :match
        validates :match, inclusion: {:in=>[:any, :all], :message=>"%{value} needs to be :any, :all"}, allow_nil: true

        # @return [Integer, nil] Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between I(retries) of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

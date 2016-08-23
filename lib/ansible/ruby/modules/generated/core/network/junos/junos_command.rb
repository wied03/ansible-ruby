# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Junos_command < Base
        # @return [Array] An ordered set of CLI commands to be executed on the remote device.  The output from the commands is then returned to the playbook in the task results.
        attribute :commands
        validates :commands, type: Array

        # @return [Array] The C(rpcs) argument accepts a list of RPCs to be executed over a netconf session and the results from the RPC execution is return to the playbook via the modules results dictionary.
        attribute :rpcs
        validates :rpcs, type: Array

        # @return [Array] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional or set of considitonals to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.
        attribute :waitfor
        validates :waitfor, type: Array

        # @return [Fixnum] Specifies the number of retries a command should by tried before it is considered failed.  The command is run on the target device every retry and evaluated against the waitfor conditionals
        attribute :retries
        validates :retries, type: Fixnum

        # @return [Fixnum] Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Fixnum

        # @return [:xml, :text, nil] Configures the encoding scheme to use when serializing output from the device.  This handles how to properly understand the output and apply the conditionals path to the result set.
        attribute :format
        validates :format, inclusion: {:in=>[:xml, :text], :message=>"%{value} needs to be :xml, :text"}, allow_nil: true
      end
    end
  end
end

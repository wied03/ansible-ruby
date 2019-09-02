# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an arbitrary set of commands to an JUNOS node and returns the results read from the device.  This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.
      class Junos_command < Base
        # @return [Array<String>, String, nil] The commands to send to the remote junos device over the configured provider.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.
        attribute :commands
        validates :commands, type: TypeGeneric.new(String)

        # @return [String, nil] The C(rpcs) argument accepts a list of RPCs to be executed over a netconf session and the results from the RPC execution is return to the playbook via the modules results dictionary.
        attribute :rpcs
        validates :rpcs, type: String

        # @return [Array<String>, String, nil] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.
        attribute :wait_for
        validates :wait_for, type: TypeGeneric.new(String)

        # @return [:any, :all, nil] The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:any, :all], :message=>"%{value} needs to be :any, :all"}, allow_nil: true

        # @return [Integer, nil] Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer

        # @return [:text, :json, :xml, :set, nil] Encoding scheme to use when serializing output from the device. This handles how to properly understand the output and apply the conditionals path to the result set. For I(rpcs) argument default display is C(xml) and for I(commands) argument default display is C(text). Value C(set) is applicable only for fetching configuration from device.
        attribute :display
        validates :display, expression_inclusion: {:in=>[:text, :json, :xml, :set], :message=>"%{value} needs to be :text, :json, :xml, :set"}, allow_nil: true
      end
    end
  end
end

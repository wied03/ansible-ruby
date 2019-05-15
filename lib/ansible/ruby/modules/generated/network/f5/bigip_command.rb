# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an arbitrary command to an BIG-IP node and returns the results read from the device. This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.
      # This module is B(not) idempotent, nor will it ever be. It is intended as a stop-gap measure to satisfy automation requirements until such a time as a real module has been developed to configure in the way you need.
      # If you are using this module, you should probably also be filing an issue to have a B(real) module created for your needs.
      class Bigip_command < Base
        # @return [Array<String>, String] The commands to send to the remote BIG-IP device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries as expired.,Only C(tmsh) commands are supported. If you are piping or adding additional logic that is outside of C(tmsh) (such as grep'ing, awk'ing or other shell related things that are not C(tmsh), this behavior is not supported.
        attribute :commands
        validates :commands, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward. If the conditional is not true by the configured retries, the task fails. See examples.
        attribute :wait_for
        validates :wait_for, type: TypeGeneric.new(String)

        # @return [:any, :all, nil] The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy. Valid values are C(all) or C(any). If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied. If the value is set to C(any) then only one of the values must be satisfied.
        attribute :match
        validates :match, inclusion: {:in=>[:any, :all], :message=>"%{value} needs to be :any, :all"}, allow_nil: true

        # @return [Integer, nil] Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.
        attribute :interval
        validates :interval, type: Integer

        # @return [:rest, :cli] Configures the transport connection to use when connecting to the remote device. The transport argument supports connectivity to the device over cli (ssh) or rest.
        attribute :transport
        validates :transport, presence: true, inclusion: {:in=>[:rest, :cli], :message=>"%{value} needs to be :rest, :cli"}

        # @return [Boolean, nil] Whether the module should raise warnings related to command idempotency or not.,Note that the F5 Ansible developers specifically leave this on to make you aware that your usage of this module may be better served by official F5 Ansible modules. This module should always be used as a last resort.
        attribute :warn
        validates :warn, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Change into this directory before running the command.
        attribute :chdir
        validates :chdir, type: String
      end
    end
  end
end

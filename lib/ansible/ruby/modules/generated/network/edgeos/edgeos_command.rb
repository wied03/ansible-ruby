# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This command module allows running one or more commands on a remote device running EdgeOS, such as the Ubiquiti EdgeRouter.
      # This module does not support running commands in configuration mode.
      # Certain C(show) commands in EdgeOS produce many lines of output and use a custom pager that can cause this module to hang.  If the value of the environment variable C(ANSIBLE_EDGEOS_TERMINAL_LENGTH) is not set, the default number of 10000 is used.
      # This is a network module and requires C(connection: network_cli) in order to work properly.
      # For more information please see the L(Network Guide,../network/getting_started/index.html).
      class Edgeos_command < Base
        # @return [String] The commands or ordered set of commands that should be run against the remote device. The output of the command is returned to the playbook. If the C(wait_for) argument is provided, the module is not returned until the condition is met or the number of retries is exceeded.
        attribute :commands
        validates :commands, presence: true, type: String

        # @return [Object, nil] Causes the task to wait for a specific condition to be met before moving forward. If the condition is not met before the specified number of retries is exceeded, the task will fail.
        attribute :wait_for

        # @return [:any, :all, nil] Used in conjunction with C(wait_for) to create match policy. If set to C(all), then all conditions in C(wait_for) must be met. If set to C(any), then only one condition must match.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:any, :all], :message=>"%{value} needs to be :any, :all"}, allow_nil: true

        # @return [Integer, nil] Number of times a command should be tried before it is considered failed. The command is run on the target device and evaluated against the C(wait_for) conditionals.
        attribute :retries
        validates :retries, type: Integer

        # @return [Integer, nil] The number of seconds to wait between C(retries) of the command.
        attribute :interval
        validates :interval, type: Integer
      end
    end
  end
end

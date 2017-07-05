# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to modify the running configuration of a switch. It provides a way to execute a single CNOS command on a network device by evaluating the current running configuration and executing the command only if the specific settings have not been already configured. The CNOS command is passed as an argument of the method. This module functions the same as the cnos_command module. The only exception is that the following inventory variable can be specified [“condition = <flag string>”] When this inventory variable is specified as the variable of a task, the command is executed for the network element that matches the flag string. Usually, commands are executed across a group of network devices. When there is a requirement to skip the execution of the command on one or more devices, it is recommended to use this module. This module uses SSH to manage network device configuration. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_conditional_command.html)
      class Cnos_conditional_command < Base
        # @return [Object] This specifies the CLI command as an attribute to this method. The command is passed using double quotes. The variables can be placed directly on to the CLI commands or can be invoked from the vars directory.
        attribute :clicommand
        validates :clicommand, presence: true

        # @return [Object] If you specify condition=false in the inventory file against any device, the command execution is skipped for that device.
        attribute :condition
        validates :condition, presence: true

        # @return [Object] If a task needs to be executed, you have to set the flag the same as it is specified in the inventory for that device.
        attribute :flag
        validates :flag, presence: true
      end
    end
  end
end

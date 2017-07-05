# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to modify the switch running configuration. It provides a way to execute a single CNOS command on a switch by evaluating the current running configuration and executing the command only if the specific setting has not been already configured. The CNOS command is passed as an argument of the method. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_command.html)
      class Cnos_command < Base
        # @return [Object] This specifies the CLI command as an attribute to this method. The command is passed using double quotes. The variables can be placed directly on to the CLI commands or can be invoked from the vars directory.
        attribute :clicommand
        validates :clicommand, presence: true
      end
    end
  end
end

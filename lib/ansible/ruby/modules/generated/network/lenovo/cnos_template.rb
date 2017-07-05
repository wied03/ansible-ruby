# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with the running configuration of a switch. It provides a way to execute a set of CNOS commands on a switch by evaluating the current running configuration and executing the commands only if the specific settings have not been already configured. The configuration source can be a set of commands or a template written in the Jinja2 templating language. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_template.html)
      class Cnos_template < Base
        # @return [Object] This specifies the path to the CNOS command file which needs to be applied. This usually comes from the commands folder. Generally this file is the output of the variables applied on a template file. So this command is preceded by a template module. Note The command file must contain the Ansible keyword {{ inventory_hostname }} in its filename to ensure that the command file is unique for each switch and condition. If this is omitted, the command file will be overwritten during iteration. For example, commandfile=./commands/clos_leaf_bgp_{{ inventory_hostname }}_commands.txt
        attribute :commandfile
        validates :commandfile, presence: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Executes a low-down and dirty SSH command, not going through the module subsystem. This is useful and should only be done in two cases. The first case is installing C(python-simplejson) on older (Python 2.4 and before) hosts that need it as a dependency to run modules, since nearly all core modules require it. Another is speaking to any devices such as routers that do not have any Python installed. In any other case, using the M(shell) or M(command) module is much more appropriate. Arguments given to M(raw) are run directly through the configured remote shell. Standard output, error output and return code are returned when available. There is no change handler support for this module.
      # This module does not require python on the remote system, much like the M(script) module.
      class Raw < Base
        # @return [Object] the raw module takes a free form command to run
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] change the shell used to execute the command. Should be an absolute path to the executable.,when using privilege escalation (C(become)), a default shell will be assigned if one is not provided as privilege escalation requires a shell.
        attribute :executable
        validates :executable, type: String
      end
    end
  end
end

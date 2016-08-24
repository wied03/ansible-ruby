# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

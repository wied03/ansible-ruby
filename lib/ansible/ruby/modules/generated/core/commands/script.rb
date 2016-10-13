# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(script) module takes the script name followed by a list of space-delimited arguments. 
      # The local script at path will be transferred to the remote node and then executed. 
      # The given script will be processed through the shell environment on the remote node. 
      # This module does not require python on the remote system, much like the M(raw) module. 
      class Script < Base
        # @return [Object] path to the local script file followed by optional arguments.
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] a filename, when it already exists, this step will B(not) be run.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] a filename, when it does not exist, this step will B(not) be run.
        attribute :removes
        validates :removes, type: String
      end
    end
  end
end

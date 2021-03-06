# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module prints statements during execution and can be useful for debugging variables or expressions without necessarily halting the playbook. Useful for debugging together with the 'when:' directive.
      # This module is also supported for Windows targets.
      class Debug < Base
        # @return [String, nil] The customized message that is printed. If omitted, prints a generic message.
        attribute :msg
        validates :msg, type: String

        # @return [String, nil] A variable name to debug.  Mutually exclusive with the 'msg' option.
        attribute :var
        validates :var, type: String

        # @return [Integer, nil] A number that controls when the debug is run, if you set to 3 it will only run debug when -vvv or above
        attribute :verbosity
        validates :verbosity, type: Integer
      end
    end
  end
end

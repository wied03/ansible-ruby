# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(script) module takes the script name followed by a list of space-delimited arguments.
      # The local script at path will be transferred to the remote node and then executed.
      # The given script will be processed through the shell environment on the remote node.
      # This module does not require python on the remote system, much like the M(raw) module.
      # This module is also supported for Windows targets.
      class Script < Base
        # @return [Object] Path to the local script file followed by optional arguments.,There is no parameter actually named 'free form', see the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] A filename on the remote node, when it already exists, this step will B(not) be run.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] A filename on the remote node, when it does not exist, this step will B(not) be run.
        attribute :removes
        validates :removes, type: String

        # @return [Object, nil] Change into this directory on the remote node before running the script.
        attribute :chdir

        # @return [String, nil] Name or path of a executable to invoke the script with.
        attribute :executable
        validates :executable, type: String
      end
    end
  end
end

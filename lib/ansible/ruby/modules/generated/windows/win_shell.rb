# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(win_shell) module takes the command name followed by a list of space-delimited arguments. It is similar to the M(win_command) module, but runs the command via a shell (defaults to PowerShell) on the target host.
      # For non-Windows targets, use the M(shell) module instead.
      class Win_shell < Base
        # @return [Object] The C(win_shell) module takes a free form command to run.,There is no parameter actually named 'free form'. See the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] A path or path filter pattern; when the referenced path exists on the target host, the task will be skipped.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] A path or path filter pattern; when the referenced path B(does not) exist on the target host, the task will be skipped.
        attribute :removes
        validates :removes, type: String

        # @return [String, nil] Set the specified path as the current working directory before executing a command
        attribute :chdir
        validates :chdir, type: String

        # @return [String, nil] Change the shell used to execute the command (eg, C(cmd)).,The target shell must accept a C(/c) parameter followed by the raw command line to be executed.
        attribute :executable
        validates :executable, type: String

        # @return [String, nil] Set the stdin of the command directly to the specified value.
        attribute :stdin
        validates :stdin, type: String
      end
    end
  end
end

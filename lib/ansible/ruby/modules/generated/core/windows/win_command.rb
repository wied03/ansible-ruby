# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(win_command) module takes the command name followed by a list of space-delimited arguments.
      # The given command will be executed on all selected nodes. It will not be processed through the shell, so variables like C($env:HOME) and operations like C("<"), C(">"), C("|"), and C(";") will not work (use the M(win_shell) module if you need these features).
      class Win_command < Base
        # @return [Object] the win_command module takes a free form command to run.  There is no parameter actually named 'free form'. See the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] a path or path filter pattern; when the referenced path exists on the target host, the task will be skipped.
        attribute :creates
        validates :creates, type: String

        # @return [Object, nil] a path or path filter pattern; when the referenced path B(does not) exist on the target host, the task will be skipped.
        attribute :removes

        # @return [String, nil] set the specified path as the current working directory before executing a command
        attribute :chdir
        validates :chdir, type: String
      end
    end
  end
end
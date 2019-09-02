# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(command) module takes the command name followed by a list of space-delimited arguments.
      # The given command will be executed on all selected nodes. It will not be processed through the shell, so variables like C($HOME) and operations like C("<"), C(">"), C("|"), C(";") and C("&") will not work (use the M(shell) module if you need these features).
      # For Windows targets, use the M(win_command) module instead.
      class Command < Base
        # @return [Object] The command module takes a free form command to run.  There is no parameter actually named 'free form'. See the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [Array<String>, String, nil] Allows the user to provide the command as a list vs. a string.  Only the string or the list form can be provided, not both.  One or the other must be provided.
        attribute :argv
        validates :argv, type: TypeGeneric.new(String)

        # @return [String, nil] A filename or (since 2.0) glob pattern. If it already exists, this step B(won't) be run.
        attribute :creates
        validates :creates, type: String

        # @return [Object, nil] A filename or (since 2.0) glob pattern. If it already exists, this step B(will) be run.
        attribute :removes

        # @return [String, nil] Change into this directory before running the command.
        attribute :chdir
        validates :chdir, type: String

        # @return [:yes, :no, nil] If command_warnings are on in ansible.cfg, do not warn about this particular line if set to C(no).
        attribute :warn
        validates :warn, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set the stdin of the command directly to the specified value.
        attribute :stdin
      end
    end
  end
end

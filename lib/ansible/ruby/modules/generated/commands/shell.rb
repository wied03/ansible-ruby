# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(shell) module takes the command name followed by a list of space-delimited arguments. It is almost exactly like the M(command) module but runs the command through a shell (C(/bin/sh)) on the remote node.
      # For Windows targets, use the M(win_shell) module instead.
      class Shell < Base
        # @return [Object] The shell module takes a free form command to run, as a string.  There's not an actual option named "free form".  See the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] a filename, when it already exists, this step will B(not) be run.
        attribute :creates
        validates :creates, type: String

        # @return [Object, nil] a filename, when it does not exist, this step will B(not) be run.
        attribute :removes

        # @return [String, nil] cd into this directory before running the command
        attribute :chdir
        validates :chdir, type: String

        # @return [String, nil] change the shell used to execute the command. Should be an absolute path to the executable.
        attribute :executable
        validates :executable, type: String

        # @return [:yes, :no, nil] if command warnings are on in ansible.cfg, do not warn about this particular line if set to no/false.
        attribute :warn
        validates :warn, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set the stdin of the command directly to the specified value.
        attribute :stdin
      end
    end
  end
end

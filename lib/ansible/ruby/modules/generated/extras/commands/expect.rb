# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(expect) module executes a command and responds to prompts
      # The given command will be executed on all selected nodes. It will not be processed through the shell, so variables like C($HOME) and operations like C("<"), C(">"), C("|"), and C("&") will not work
      class Expect < Base
        # @return [String] the command module takes command to run.
        attribute :command
        validates :command, presence: true, type: String

        # @return [Object, nil] a filename, when it already exists, this step will B(not) be run.
        attribute :creates

        # @return [Object, nil] a filename, when it does not exist, this step will B(not) be run.
        attribute :removes

        # @return [Object, nil] cd into this directory before running the command
        attribute :chdir

        # @return [Hash] Mapping of expected string/regex and string to respond with. If the response is a list, successive matches return successive responses. List functionality is new in 2.1.
        attribute :responses
        validates :responses, presence: true, type: Hash

        # @return [Integer, nil] Amount of time in seconds to wait for the expected strings
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Boolean, nil] Whether or not to echo out your response strings
        attribute :echo
        validates :echo, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

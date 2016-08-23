# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Expect < Base
        # @return [String] the command module takes command to run.
        attribute :command
        validates :command, presence: true, type: String

        # @return [Object] a filename, when it already exists, this step will B(not) be run.
        attribute :creates

        # @return [Object] a filename, when it does not exist, this step will B(not) be run.
        attribute :removes

        # @return [Object] cd into this directory before running the command
        attribute :chdir

        # @return [Hash] Mapping of expected string/regex and string to respond with. If the response is a list, successive matches return successive responses. List functionality is new in 2.1.
        attribute :responses
        validates :responses, presence: true, type: Hash

        # @return [Fixnum] Amount of time in seconds to wait for the expected strings
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Object] Whether or not to echo out your response strings
        attribute :echo
      end
    end
  end
end

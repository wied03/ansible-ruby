# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Wraps the msg.exe command in order to send messages to Windows hosts.
      class Win_msg < Base
        # @return [String, nil] Who to send the message to. Can be a username, sessionname or sessionid.
        attribute :to
        validates :to, type: String

        # @return [Integer, nil] How long to wait for receiver to acknowledge message, in seconds.
        attribute :display_seconds
        validates :display_seconds, type: Integer

        # @return [String, nil] Whether to wait for users to respond.  Module will only wait for the number of seconds specified in display_seconds or 10 seconds if not specified. However, if I(wait) is C(yes), the message is sent to each logged on user in turn, waiting for the user to either press 'ok' or for the timeout to elapse before moving on to the next user.
        attribute :wait
        validates :wait, type: String

        # @return [String, nil] The text of the message to be displayed.,The message must be less than 256 characters.
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to jabber
      class Jabber < Base
        # @return [String] User as which to connect
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] password for user to connect
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] user ID or name of the room, when using room use a slash to indicate your nick.
        attribute :to
        validates :to, presence: true, type: String

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, nil] host to connect, overrides user info
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] port to connect to, overrides default
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] message encoding
        attribute :encoding
      end
    end
  end
end

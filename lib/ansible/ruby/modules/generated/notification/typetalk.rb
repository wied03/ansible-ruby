# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to typetalk using typetalk API ( http://developers.typetalk.in/ )
      class Typetalk < Base
        # @return [Integer] OAuth2 client ID
        attribute :client_id
        validates :client_id, presence: true, type: Integer

        # @return [Integer] OAuth2 client secret
        attribute :client_secret
        validates :client_secret, presence: true, type: Integer

        # @return [Integer] topic id to post message
        attribute :topic
        validates :topic, presence: true, type: Integer

        # @return [String] message body
        attribute :msg
        validates :msg, presence: true, type: String
      end
    end
  end
end

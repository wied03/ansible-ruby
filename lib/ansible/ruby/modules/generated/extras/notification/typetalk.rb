# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Typetalk < Base
        # @return [String] OAuth2 client ID
        attribute :client_id
        validates :client_id, presence: true, type: String

        # @return [String] OAuth2 client secret
        attribute :client_secret
        validates :client_secret, presence: true, type: String

        # @return [String] topic id to post message
        attribute :topic
        validates :topic, presence: true, type: String

        # @return [String] message body
        attribute :msg
        validates :msg, presence: true, type: String
      end
    end
  end
end

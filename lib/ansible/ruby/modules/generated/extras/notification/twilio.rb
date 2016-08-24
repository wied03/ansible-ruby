# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Twilio < Base
        # @return [String] user's Twilio account token found on the account page
        attribute :account_sid
        validates :account_sid, presence: true, type: String

        # @return [String] user's Twilio authentication token
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [String] the body of the text message
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, Array<Integer>, Integer] one or more phone numbers to send the text message to, format +15551112222
        attribute :to_number
        validates :to_number, presence: true, type: TypeGeneric.new(Integer)

        # @return [String] the Twilio number to send the text message from, format +15551112222
        attribute :from_number
        validates :from_number, presence: true, type: String

        # @return [String, nil] a URL with a picture, video or sound clip to send with an MMS (multimedia message) instead of a plain SMS
        attribute :media_url
        validates :media_url, type: String
      end
    end
  end
end

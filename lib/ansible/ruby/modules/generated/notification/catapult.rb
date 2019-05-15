# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows notifications to be sent using sms / mms via the catapult bandwidth api.
      class Catapult < Base
        # @return [String] One of your catapult telephone numbers the message should come from (must be in E.164 format, like C(+19195551212)).
        attribute :src
        validates :src, presence: true, type: String

        # @return [String, Array<Integer>, Integer] The phone number or numbers the message should be sent to (must be in E.164 format, like C(+19195551212)).
        attribute :dest
        validates :dest, presence: true, type: TypeGeneric.new(Integer)

        # @return [String] The contents of the text message (must be 2048 characters or less).
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, nil] For MMS messages, a media url to the location of the media to be sent with the message.
        attribute :media
        validates :media, type: String

        # @return [String] User Id from Api account page.
        attribute :user_id
        validates :user_id, presence: true, type: String

        # @return [String] Api Token from Api account page.
        attribute :api_token
        validates :api_token, presence: true, type: String

        # @return [String] Api Secret from Api account page.
        attribute :api_secret
        validates :api_secret, presence: true, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(rocketchat) module sends notifications to Rocket Chat via the Incoming WebHook integration
      class Rocketchat < Base
        # @return [String] The domain for your environment without protocol. (i.e. C(example.com) or C(chat.example.com))
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [String] Rocket Chat Incoming Webhook integration token.  This provides authentication to Rocket Chat's Incoming webhook for posting messages.
        attribute :token
        validates :token, presence: true, type: String

        # @return [:http, :https, nil] Specify the protocol used to send notification messages before the webhook url. (i.e. http or https)
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:http, :https], :message=>"%{value} needs to be :http, :https"}, allow_nil: true

        # @return [String, nil] Message to be sent.
        attribute :msg
        validates :msg, type: String

        # @return [NilClass, nil] Channel to send the message to. If absent, the message goes to the channel selected for the I(token) specifed during the creation of webhook.
        attribute :channel
        validates :channel, type: NilClass

        # @return [String, nil] This is the sender of the message.
        attribute :username
        validates :username, type: String

        # @return [String, nil] URL for the message sender's icon.
        attribute :icon_url
        validates :icon_url, type: String

        # @return [Object, nil] Emoji for the message sender. The representation for the available emojis can be got from Rocket Chat. (for example :thumbsup:) (if I(icon_emoji) is set, I(icon_url) will not be used)
        attribute :icon_emoji

        # @return [1, 0, nil] Automatically create links for channels and usernames in I(msg).
        attribute :link_names
        validates :link_names, inclusion: {:in=>[1, 0], :message=>"%{value} needs to be 1, 0"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:normal, :good, :warning, :danger, nil] Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message
        attribute :color
        validates :color, inclusion: {:in=>[:normal, :good, :warning, :danger], :message=>"%{value} needs to be :normal, :good, :warning, :danger"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] Define a list of attachments.
        attribute :attachments
        validates :attachments, type: TypeGeneric.new(Hash)
      end
    end
  end
end

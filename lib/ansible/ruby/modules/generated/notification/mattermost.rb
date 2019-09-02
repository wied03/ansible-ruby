# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends notifications to U(http://your.mattermost.url) via the Incoming WebHook integration.
      class Mattermost < Base
        # @return [String] Mattermost url (i.e. http://mattermost.yourcompany.com).
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] Mattermost webhook api key. Log into your mattermost site, go to Menu -> Integration -> Incoming Webhook -> Add Incoming Webhook. This will give you full URL. api_key is the last part. http://mattermost.example.com/hooks/C(API_KEY)
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Text to send. Note that the module does not handle escaping characters.
        attribute :text
        validates :text, presence: true, type: String

        # @return [String, nil] Channel to send the message to. If absent, the message goes to the channel selected for the I(api_key).
        attribute :channel
        validates :channel, type: String

        # @return [String, nil] This is the sender of the message (Username Override need to be enabled by mattermost admin, see mattermost doc.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Url for the message sender's icon.
        attribute :icon_url
        validates :icon_url, type: String

        # @return [Boolean, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

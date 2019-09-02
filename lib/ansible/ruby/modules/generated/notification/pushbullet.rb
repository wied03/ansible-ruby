# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module sends push notifications via Pushbullet to channels or devices.
      class Pushbullet < Base
        # @return [String] Push bullet API token
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String, nil] The channel TAG you wish to broadcast a push notification, as seen on the "My Channels" > "Edit your channel" at Pushbullet page.
        attribute :channel
        validates :channel, type: String

        # @return [String, nil] The device NAME you wish to send a push notification, as seen on the Pushbullet main page.
        attribute :device
        validates :device, type: String

        # @return [:note, :link, nil] Thing you wish to push.
        attribute :push_type
        validates :push_type, expression_inclusion: {:in=>[:note, :link], :message=>"%{value} needs to be :note, :link"}, allow_nil: true

        # @return [String] Title of the notification.
        attribute :title
        validates :title, presence: true, type: String

        # @return [String, nil] Body of the notification, e.g. Details of the fault you're alerting.
        attribute :body
        validates :body, type: String
      end
    end
  end
end

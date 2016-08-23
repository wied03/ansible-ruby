# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pushbullet < Base
        # @return [String] Push bullet API token
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] The channel TAG you wish to broadcast a push notification, as seen on the "My Channels" > "Edit your channel" at Pushbullet page.
        attribute :channel
        validates :channel, type: String

        # @return [String] The device NAME you wish to send a push notification, as seen on the Pushbullet main page.
        attribute :device
        validates :device, type: String

        # @return [String] Thing you wish to push.
        attribute :push_type
        validates :push_type, inclusion: {:in=>[:note, :link], :message=>"%{value} needs to be :note, :link"}, allow_nil: true

        # @return [String] Title of the notification.
        attribute :title
        validates :title, presence: true, type: String

        # @return [String] Body of the notification, e.g. Details of the fault you're alerting.
        attribute :body
        validates :body, type: String
      end
    end
  end
end

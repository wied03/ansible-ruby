# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to a Hipchat room, with options to control the formatting.
      class Hipchat < Base
        # @return [String] API token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] ID or name of the room.
        attribute :room
        validates :room, presence: true, type: String

        # @return [String, nil] Name the message will appear to be sent from. Max length is 15 characters - above this it will be truncated.
        attribute :from
        validates :from, type: String

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [:yellow, :red, :green, :purple, :gray, :random, nil] Background color for the message.
        attribute :color
        validates :color, expression_inclusion: {:in=>[:yellow, :red, :green, :purple, :gray, :random], :message=>"%{value} needs to be :yellow, :red, :green, :purple, :gray, :random"}, allow_nil: true

        # @return [:text, :html, nil] Message format.
        attribute :msg_format
        validates :msg_format, expression_inclusion: {:in=>[:text, :html], :message=>"%{value} needs to be :text, :html"}, allow_nil: true

        # @return [:yes, :no, nil] If true, a notification will be triggered for users in the room.
        attribute :notify
        validates :notify, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] API url if using a self-hosted hipchat server. For Hipchat API version 2 use the default URI with C(/v2) instead of C(/v1).
        attribute :api
        validates :api, type: String
      end
    end
  end
end

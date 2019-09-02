# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to a Cisco Spark Room or Individual with options to control the formatting.
      class Cisco_spark < Base
        # @return [:roomId, :toPersonEmail, :toPersonId] The request parameter you would like to send the message to.,Messages can be sent to either a room or individual (by ID or E-Mail).
        attribute :recipient_type
        validates :recipient_type, presence: true, expression_inclusion: {:in=>[:roomId, :toPersonEmail, :toPersonId], :message=>"%{value} needs to be :roomId, :toPersonEmail, :toPersonId"}

        # @return [String] The unique identifier associated with the supplied C(recipient_type).
        attribute :recipient_id
        validates :recipient_id, presence: true, type: String

        # @return [:text, :markdown, nil] Specifies how you would like the message formatted.
        attribute :message_type
        validates :message_type, expression_inclusion: {:in=>[:text, :markdown], :message=>"%{value} needs to be :text, :markdown"}, allow_nil: true

        # @return [String] Your personal access token required to validate the Spark API.
        attribute :personal_token
        validates :personal_token, presence: true, type: String

        # @return [String] The message you would like to send.
        attribute :message
        validates :message, presence: true, type: String
      end
    end
  end
end

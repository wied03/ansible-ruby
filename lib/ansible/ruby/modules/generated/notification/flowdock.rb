# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to a flowdock team inbox or chat using the push API (see https://www.flowdock.com/api/team-inbox and https://www.flowdock.com/api/chat)
      class Flowdock < Base
        # @return [String] API token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [:inbox, :chat] Whether to post to 'inbox' or 'chat'
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:inbox, :chat], :message=>"%{value} needs to be :inbox, :chat"}

        # @return [String] Content of the message
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [Array<String>, String, nil] tags of the message, separated by commas
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [String, nil] (chat only - required) Name of the "user" sending the message
        attribute :external_user_name
        validates :external_user_name, type: String

        # @return [String, nil] (inbox only - required) Email address of the message sender
        attribute :from_address
        validates :from_address, type: String

        # @return [String, nil] (inbox only - required) Human readable identifier of the application that uses the Flowdock API
        attribute :source
        validates :source, type: String

        # @return [String, nil] (inbox only - required) Subject line of the message
        attribute :subject
        validates :subject, type: String

        # @return [Object, nil] (inbox only) Name of the message sender
        attribute :from_name

        # @return [Object, nil] (inbox only) Email address for replies
        attribute :reply_to

        # @return [Object, nil] (inbox only) Human readable identifier for more detailed message categorization
        attribute :project

        # @return [Object, nil] (inbox only) Link associated with the message. This will be used to link the message subject in Team Inbox.
        attribute :link

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

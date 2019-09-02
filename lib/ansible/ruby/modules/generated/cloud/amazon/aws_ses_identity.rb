# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the user to manage verified email and domain identity for SES.
      # This covers verifying and removing identities as well as setting up complaint, bounce and delivery notification settings.
      class Aws_ses_identity < Base
        # @return [String] This is the email address or domain to verify / delete.,If this contains an '@' then it will be considered an email. Otherwise it will be considered a domain.
        attribute :identity
        validates :identity, presence: true, type: String

        # @return [:present, :absent, nil] Whether to create(or update) or delete the identity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash, nil] Setup the SNS topic used to report bounce notifications.,If omitted, bounce notifications will not be delivered to a SNS topic.,If bounce notifications are not delivered to a SNS topic, I(feedback_forwarding) must be enabled.
        attribute :bounce_notifications
        validates :bounce_notifications, type: Hash

        # @return [Hash, nil] Setup the SNS topic used to report complaint notifications.,If omitted, complaint notifications will not be delivered to a SNS topic.,If complaint notifications are not delivered to a SNS topic, I(feedback_forwarding) must be enabled.
        attribute :complaint_notifications
        validates :complaint_notifications, type: Hash

        # @return [Hash, nil] Setup the SNS topic used to report delivery notifications.,If omitted, delivery notifications will not be delivered to a SNS topic.
        attribute :delivery_notifications
        validates :delivery_notifications, type: Hash

        # @return [Boolean, nil] Whether or not to enable feedback forwarding.,This can only be false if both I(bounce_notifications) and I(complaint_notifications) specify SNS topics.
        attribute :feedback_forwarding
        validates :feedback_forwarding, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

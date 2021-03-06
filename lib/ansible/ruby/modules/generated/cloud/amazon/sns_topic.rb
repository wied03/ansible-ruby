# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(sns_topic) module allows you to create, delete, and manage subscriptions for AWS SNS topics. As of 2.6, this module can be use to subscribe and unsubscribe to topics outside of your AWS account.
      class Sns_topic < Base
        # @return [String] The name or ARN of the SNS topic to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Whether to create or destroy an SNS topic
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Display name of the topic
        attribute :display_name
        validates :display_name, type: String

        # @return [Object, nil] Policy to apply to the SNS topic
        attribute :policy

        # @return [Hash, nil] Delivery policy to apply to the SNS topic
        attribute :delivery_policy
        validates :delivery_policy, type: Hash

        # @return [Object, nil] List of subscriptions to apply to the topic. Note that AWS requires subscriptions to be confirmed, so you will need to confirm any new subscriptions.
        attribute :subscriptions

        # @return [String, nil] Whether to purge any subscriptions not listed here. NOTE: AWS does not allow you to purge any PendingConfirmation subscriptions, so if any exist and would be purged, they are silently skipped. This means that somebody could come back later and confirm the subscription. Sorry. Blame Amazon.
        attribute :purge_subscriptions
        validates :purge_subscriptions, type: String
      end
    end
  end
end

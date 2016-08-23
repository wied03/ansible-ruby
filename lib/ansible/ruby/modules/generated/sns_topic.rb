# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Sns_topic < Base
        # @return [String] The name or ARN of the SNS topic to converge
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether to create or destroy an SNS topic
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] Display name of the topic
        attribute :display_name
        validates :display_name, type: String

        # @return [String] Policy to apply to the SNS topic
        attribute :policy
        validates :policy, type: String

        # @return [String] Delivery policy to apply to the SNS topic
        attribute :delivery_policy
        validates :delivery_policy, type: String

        # @return [Array] List of subscriptions to apply to the topic. Note that AWS requires subscriptions to be confirmed, so you will need to confirm any new subscriptions.
        attribute :subscriptions
        validates :subscriptions, type: Array

        # @return [TrueClass] Whether to purge any subscriptions not listed here. NOTE: AWS does not allow you to purge any PendingConfirmation subscriptions, so if any exist and would be purged, they are silently skipped. This means that somebody could come back later and confirm the subscription. Sorry. Blame Amazon.
        attribute :purge_subscriptions
        validates :purge_subscriptions, type: TrueClass
      end
    end
  end
end

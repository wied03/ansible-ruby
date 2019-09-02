# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A named resource representing the stream of messages from a single, specific topic, to be delivered to the subscribing application.
      class Gcp_pubsub_subscription < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the subscription.
        attribute :name
        validates :name, type: String

        # @return [String, nil] A reference to a Topic resource.
        attribute :topic
        validates :topic, type: String

        # @return [Hash, nil] If push delivery is used with this subscription, this field is used to configure it. An empty pushConfig signifies that the subscriber will pull and ack messages using API methods.
        attribute :push_config
        validates :push_config, type: Hash

        # @return [Integer, nil] This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis).,For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call subscriptions.modifyAckDeadline with the corresponding ackId if using pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes).,If this parameter is 0, a default value of 10 seconds is used.,For push delivery, this value is also used to set the request timeout for the call to the push endpoint.,If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
        attribute :ack_deadline_seconds
        validates :ack_deadline_seconds, type: Integer
      end
    end
  end
end

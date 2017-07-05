# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and Delete Topics/Subscriptions, Publish and pull messages on PubSub. See U(https://cloud.google.com/pubsub/docs) for an overview.
      class Gcpubsub < Base
        # @return [Object] GCP pubsub topic name.  Only the name, not the full path, is required.
        attribute :topic
        validates :topic, presence: true

        # @return [Object, nil] Dictionary containing a subscripton name associated with a topic (required), along with optional ack_deadline, push_endpoint and pull. For pulling from a subscription, message_ack (bool), max_messages (int) and return_immediate are available as subfields.  See subfields name, push_endpoint and ack_deadline for more information.
        attribute :subscription

        # @return [Object, nil] Subfield of subscription. Required if subscription is specified. See examples.
        attribute :name

        # @return [Object, nil] Subfield of subscription. Not required. Default deadline for subscriptions to ACK the message before it is resent. See examples.
        attribute :ack_deadline

        # @return [Object, nil] Subfield of subscription. Not required. If specified, messages will be retrieved from topic via the provided subscription name. max_messages (int; default None; max number of messages to pull), message_ack (bool; default False; acknowledge the message) and return_immediately (bool; default True, don't wait for messages to appear). If the messages are acknowledged, changed is set to True, otherwise, changed is False.
        attribute :pull

        # @return [Object, nil] Subfield of subscription.  Not required.  If specified, message will be sent to an endpoint. See U(https://cloud.google.com/pubsub/docs/advanced#push_endpoints) for more information.
        attribute :push_endpoint

        # @return [Object, nil] List of dictionaries describing messages and attributes to be published.  Dictionary is in message(str):attributes(dict) format. Only message is required.
        attribute :publish

        # @return [String, nil] State of the topic or queue (absent, present). Applies to the most granular resource. Remove the most granular resource.  If subcription is specified we remove it.  If only topic is specified, that is what is removed. Note that a topic can be removed without first removing the subscription.
        attribute :state
        validates :state, type: String
      end
    end
  end
end

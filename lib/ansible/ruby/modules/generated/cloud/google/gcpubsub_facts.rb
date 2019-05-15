# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List Topics/Subscriptions from Google PubSub.  Use the gcpubsub module for topic/subscription management. See U(https://cloud.google.com/pubsub/docs) for an overview.
      class Gcpubsub_facts < Base
        # @return [String, nil] GCP pubsub topic name.  Only the name, not the full path, is required.
        attribute :topic
        validates :topic, type: String

        # @return [String] Choices are 'topics' or 'subscriptions'
        attribute :view
        validates :view, presence: true, type: String

        # @return [String, nil] list is the only valid option.
        attribute :state
        validates :state, type: String
      end
    end
  end
end

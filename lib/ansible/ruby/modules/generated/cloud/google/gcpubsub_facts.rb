# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List Topics/Subscriptions from Google PubSub.  Use the gcpubsub module for topic/subscription management. See U(https://cloud.google.com/pubsub/docs) for an overview.
      class Gcpubsub_facts < Base
        # @return [Object, nil] GCP pubsub topic name.  Only the name, not the full path, is required.
        attribute :topic

        # @return [Object] Choices are 'topics' or 'subscriptions'
        attribute :view
        validates :view, presence: true

        # @return [Object, nil] list is the only valid option.
        attribute :state
      end
    end
  end
end

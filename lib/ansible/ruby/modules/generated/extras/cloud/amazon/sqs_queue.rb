# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete AWS SQS queues.
      # Update attributes on existing queues.
      class Sqs_queue < Base
        # @return [:present, :absent, nil] Create or delete the queue
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the queue.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] The default visibility timeout in seconds.
        attribute :default_visibility_timeout
        validates :default_visibility_timeout, type: Integer

        # @return [Integer, nil] The message retention period in seconds.
        attribute :message_retention_period
        validates :message_retention_period, type: Integer

        # @return [Integer, nil] The maximum message size in bytes.
        attribute :maximum_message_size
        validates :maximum_message_size, type: Integer

        # @return [Integer, nil] The delivery delay in seconds.
        attribute :delivery_delay
        validates :delivery_delay, type: Integer

        # @return [Integer, nil] The receive message wait time in seconds.
        attribute :receive_message_wait_time
        validates :receive_message_wait_time, type: Integer

        # @return [String, nil] The json dict policy to attach to queue
        attribute :policy
        validates :policy, type: String
      end
    end
  end
end

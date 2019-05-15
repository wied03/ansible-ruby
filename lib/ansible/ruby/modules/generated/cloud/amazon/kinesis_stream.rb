# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Delete a Kinesis Stream.
      # Update the retention period of a Kinesis Stream.
      # Update Tags on a Kinesis Stream.
      # Enable/disable server side encryption on a Kinesis Stream.
      class Kinesis_stream < Base
        # @return [String] The name of the Kinesis Stream you are managing.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] The number of shards you want to have with this stream.,This is required when state == present
        attribute :shards
        validates :shards, type: Integer

        # @return [Integer, nil] The default retention period is 24 hours and can not be less than 24 hours.,The retention period can be modified during any point in time.
        attribute :retention_period
        validates :retention_period, type: Integer

        # @return [:present, :absent, nil] Create or Delete the Kinesis Stream.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Wait for operation to complete before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How many seconds to wait for an operation to complete before timing out.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] A dictionary of resource tags of the form: { tag1: value1, tag2: value2 }.
        attribute :tags
        validates :tags, type: Hash

        # @return [:enabled, :disabled, nil] Enable or Disable encryption on the Kinesis Stream.
        attribute :encryption_state
        validates :encryption_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] The type of encryption.
        attribute :encryption_type
        validates :encryption_type, type: String

        # @return [String, nil] The GUID or alias for the KMS key.
        attribute :key_id
        validates :key_id, type: String
      end
    end
  end
end

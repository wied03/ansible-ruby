# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Copies an EC2 Snapshot from a source region to a destination region.
      class Ec2_snapshot_copy < Base
        # @return [String] The source region the Snapshot should be copied from.
        attribute :source_region
        validates :source_region, presence: true, type: String

        # @return [String] The ID of the Snapshot in source region that should be copied.
        attribute :source_snapshot_id
        validates :source_snapshot_id, presence: true, type: String

        # @return [Object, nil] An optional human-readable string describing purpose of the new Snapshot.
        attribute :description

        # @return [:yes, :no, nil] Whether or not the destination Snapshot should be encrypted.
        attribute :encrypted
        validates :encrypted, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] KMS key id used to encrypt snapshot. If not specified, defaults to EBS Customer Master Key (CMK) for that account.
        attribute :kms_key_id
        validates :kms_key_id, type: String

        # @return [:yes, :no, nil] Wait for the copied Snapshot to be in 'Available' state before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] A hash/dictionary of tags to add to the new Snapshot; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end

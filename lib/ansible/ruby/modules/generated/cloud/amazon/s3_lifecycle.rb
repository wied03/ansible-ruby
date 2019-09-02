# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage s3 bucket lifecycle rules in AWS
      class S3_lifecycle < Base
        # @return [String] Name of the s3 bucket
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Indicates the lifetime of the objects that are subject to the rule by the date they will expire. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified.\r\n
        attribute :expiration_date
        validates :expiration_date, type: String

        # @return [Integer, nil] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
        attribute :expiration_days
        validates :expiration_days, type: Integer

        # @return [String, nil] Prefix identifying one or more objects to which the rule applies.  If no prefix is specified, the rule will apply to the whole bucket.
        attribute :prefix
        validates :prefix, type: String

        # @return [Boolean, nil] "Whether to replace all the current transition(s) with the new transition(s). When false, the provided transition(s) will be added, replacing transitions with the same storage_class. When true, existing transitions will be removed and replaced with the new transition(s)\r\n
        attribute :purge_transitions
        validates :purge_transitions, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Delete noncurrent versions this many days after they become noncurrent
        attribute :noncurrent_version_expiration_days

        # @return [:glacier, :onezone_ia, :standard_ia, nil] Transition noncurrent versions to this storage class
        attribute :noncurrent_version_storage_class
        validates :noncurrent_version_storage_class, expression_inclusion: {:in=>[:glacier, :onezone_ia, :standard_ia], :message=>"%{value} needs to be :glacier, :onezone_ia, :standard_ia"}, allow_nil: true

        # @return [Object, nil] Transition noncurrent versions this many days after they become noncurrent
        attribute :noncurrent_version_transition_days

        # @return [Object, nil] A list of transition behaviors to be applied to noncurrent versions for the rule. Each storage class may be used only once. Each transition behavior contains these elements\r\n  I(transition_days)\r\n  I(storage_class)\r\n
        attribute :noncurrent_version_transitions

        # @return [Object, nil] Unique identifier for the rule. The value cannot be longer than 255 characters. A unique value for the rule will be generated if no value is provided.
        attribute :rule_id

        # @return [:present, :absent, nil] Create or remove the lifecycle rule
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:enabled, :disabled, nil] If 'enabled', the rule is currently being applied. If 'disabled', the rule is not currently being applied.
        attribute :status
        validates :status, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:glacier, :onezone_ia, :standard_ia, nil] The storage class to transition to. Currently there are two supported values - 'glacier',  'onezone_ia', or 'standard_ia'.,The 'standard_ia' class is only being available from Ansible version 2.2.
        attribute :storage_class
        validates :storage_class, expression_inclusion: {:in=>[:glacier, :onezone_ia, :standard_ia], :message=>"%{value} needs to be :glacier, :onezone_ia, :standard_ia"}, allow_nil: true

        # @return [String, nil] Indicates the lifetime of the objects that are subject to the rule by the date they will transition to a different storage class. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified. If transition_days is not specified, this parameter is required."\r\n
        attribute :transition_date
        validates :transition_date, type: String

        # @return [Integer, nil] Indicates when, in days, an object transitions to a different storage class. If transition_date is not specified, this parameter is required.
        attribute :transition_days
        validates :transition_days, type: Integer

        # @return [Array<Hash>, Hash, nil] A list of transition behaviors to be applied to the rule. Each storage class may be used only once. Each transition behavior may contain these elements I(transition_days) I(transition_date) I(storage_class)
        attribute :transitions
        validates :transitions, type: TypeGeneric.new(Hash)
      end
    end
  end
end

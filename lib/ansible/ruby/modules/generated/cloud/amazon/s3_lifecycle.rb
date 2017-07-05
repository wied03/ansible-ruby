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

        # @return [String, nil] Indicates the lifetime of the objects that are subject to the rule by the date they will expire. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified.
        attribute :expiration_date
        validates :expiration_date, type: String

        # @return [Integer, nil] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
        attribute :expiration_days
        validates :expiration_days, type: Integer

        # @return [String, nil] Prefix identifying one or more objects to which the rule applies.  If no prefix is specified, the rule will apply to the whole bucket.
        attribute :prefix
        validates :prefix, type: String

        # @return [Object, nil] Unique identifier for the rule. The value cannot be longer than 255 characters. A unique value for the rule will be generated if no value is provided.
        attribute :rule_id

        # @return [:present, :absent, nil] Create or remove the lifecycle rule
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:enabled, :disabled, nil] If 'enabled', the rule is currently being applied. If 'disabled', the rule is not currently being applied.
        attribute :status
        validates :status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:glacier, :standard_ia, nil] The storage class to transition to. Currently there are two supported values - 'glacier' or 'standard_ia'.,The 'standard_ia' class is only being available from Ansible version 2.2.
        attribute :storage_class
        validates :storage_class, inclusion: {:in=>[:glacier, :standard_ia], :message=>"%{value} needs to be :glacier, :standard_ia"}, allow_nil: true

        # @return [String, nil] Indicates the lifetime of the objects that are subject to the rule by the date they will transition to a different storage class. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified. If transition_days is not specified, this parameter is required.
        attribute :transition_date
        validates :transition_date, type: String

        # @return [Integer, nil] Indicates when, in days, an object transitions to a different storage class. If transition_date is not specified, this parameter is required.
        attribute :transition_days
        validates :transition_days, type: Integer
      end
    end
  end
end
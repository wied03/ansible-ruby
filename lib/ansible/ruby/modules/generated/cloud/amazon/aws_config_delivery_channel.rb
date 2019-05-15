# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages AWS Config delivery locations for rule checks and configuration info
      class Aws_config_delivery_channel < Base
        # @return [String] The name of the AWS Config resource.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the Config rule should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.
        attribute :s3_bucket
        validates :s3_bucket, type: String

        # @return [Object, nil] The prefix for the specified Amazon S3 bucket.
        attribute :s3_prefix

        # @return [String, nil] The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.
        attribute :sns_topic_arn
        validates :sns_topic_arn, type: String

        # @return [:One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours, nil] The frequency with which AWS Config delivers configuration snapshots.
        attribute :delivery_frequency
        validates :delivery_frequency, inclusion: {:in=>[:One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours], :message=>"%{value} needs to be :One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or deletes CloudTrail configuration. Ensures logging is also enabled.
      class Cloudtrail < Base
        # @return [:enabled, :disabled] add or remove CloudTrail configuration.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}

        # @return [String, nil] name for given CloudTrail configuration.,This is a primary key and is used to identify the configuration.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] bucket to place CloudTrail in.,this bucket should exist and have the proper policy. See U(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_bucket_policy.html),required when state=enabled.
        attribute :s3_bucket_prefix

        # @return [String, nil] prefix to keys in bucket. A trailing slash is not necessary and will be removed.
        attribute :s3_key_prefix
        validates :s3_key_prefix, type: String

        # @return [Boolean, nil] record API calls from global services such as IAM and STS?
        attribute :include_global_events
        validates :include_global_events, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] AWS secret key. If not set then the value of the AWS_SECRET_KEY environment variable is used.
        attribute :aws_secret_key

        # @return [Object, nil] AWS access key. If not set then the value of the AWS_ACCESS_KEY environment variable is used.
        attribute :aws_access_key

        # @return [String, nil] The AWS region to use. If not specified then the value of the EC2_REGION environment variable, if any, is used.
        attribute :region
        validates :region, type: String
      end
    end
  end
end

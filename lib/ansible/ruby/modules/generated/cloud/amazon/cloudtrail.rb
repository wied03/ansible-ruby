# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, deletes, or updates CloudTrail configuration. Ensures logging is also enabled.
      class Cloudtrail < Base
        # @return [:present, :absent, :enabled, :disabled] Add or remove CloudTrail configuration.,The following states have been preserved for backwards compatibility. C(state=enabled) and C(state=disabled).,enabled=present and disabled=absent.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}

        # @return [String] Name for the CloudTrail.,Names are unique per-region unless the CloudTrail is a multi-region trail, in which case it is unique per-account.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Start or stop the CloudTrail logging. If stopped the trail will be paused and will not record events or deliver log files.
        attribute :enable_logging
        validates :enable_logging, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] An existing S3 bucket where CloudTrail will deliver log files.,This bucket should exist and have the proper policy.,See U(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_bucket_policy.html),Required when C(state=present)
        attribute :s3_bucket_name
        validates :s3_bucket_name, type: String

        # @return [String, nil] S3 Key prefix for delivered log files. A trailing slash is not necessary and will be removed.
        attribute :s3_key_prefix
        validates :s3_key_prefix, type: String

        # @return [Boolean, nil] Specify whether the trail belongs only to one region or exists in all regions.
        attribute :is_multi_region_trail
        validates :is_multi_region_trail, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether log file integrity validation is enabled.,CloudTrail will create a hash for every log file delivered and produce a signed digest file that can be used to ensure log files have not been tampered.
        attribute :enable_log_file_validation
        validates :enable_log_file_validation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Record API calls from global services such as IAM and STS.
        attribute :include_global_events
        validates :include_global_events, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] SNS Topic name to send notifications to when a log file is delivered
        attribute :sns_topic_name

        # @return [String, nil] Specifies a full ARN for an IAM role that assigns the proper permissions for CloudTrail to create and write to the log group.,See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html),Required when C(cloudwatch_logs_log_group_arn)
        attribute :cloudwatch_logs_role_arn
        validates :cloudwatch_logs_role_arn, type: String

        # @return [String, nil] A full ARN specifying a valid CloudWatch log group to which CloudTrail logs will be delivered. The log group should already exist.,See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html),Required when C(cloudwatch_logs_role_arn)
        attribute :cloudwatch_logs_log_group_arn
        validates :cloudwatch_logs_log_group_arn, type: String

        # @return [String, nil] Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. This also has the effect of enabling log file encryption.,The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.,See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/encrypting-cloudtrail-log-files-with-aws-kms.html)
        attribute :kms_key_id
        validates :kms_key_id, type: String

        # @return [Object, nil] A hash/dictionary of tags to be applied to the CloudTrail resource.,Remove completely or specify an empty dictionary to remove all tags.
        attribute :tags
      end
    end
  end
end

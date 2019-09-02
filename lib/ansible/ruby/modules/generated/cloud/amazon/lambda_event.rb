# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Lambda function event source mappings such as DynamoDB and Kinesis stream events via the Ansible framework. These event source mappings are relevant only in the AWS Lambda pull model, where AWS Lambda invokes the function. It is idempotent and supports "Check" mode.  Use module M(lambda) to manage the lambda function itself and M(lambda_alias) to manage function aliases.
      class Lambda_event < Base
        # @return [Object] The name or ARN of the lambda function.
        attribute :lambda_function_arn
        validates :lambda_function_arn, presence: true

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] Name of the function alias. Mutually exclusive with C(version).
        attribute :alias
        validates :alias, presence: true

        # @return [Object, nil] Version of the Lambda function. Mutually exclusive with C(alias).
        attribute :version

        # @return [:stream, :sqs, nil] Source of the event that triggers the lambda function.,For DynamoDB and Kinesis events, select 'stream',For SQS queues, select 'sqs'
        attribute :event_source
        validates :event_source, expression_inclusion: {:in=>[:stream, :sqs], :message=>"%{value} needs to be :stream, :sqs"}, allow_nil: true

        # @return [Object] Sub-parameters required for event source.,I(== stream event source ==),C(source_arn) The Amazon Resource Name (ARN) of the Kinesis or DynamoDB stream that is the event source.,C(enabled) Indicates whether AWS Lambda should begin polling the event source. Default is True.,C(batch_size) The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Default is 100.,C(starting_position) The position in the stream where AWS Lambda should start reading. Choices are TRIM_HORIZON or LATEST.,I(== sqs event source ==),C(source_arn) The Amazon Resource Name (ARN) of the SQS queue to read events from.,C(enabled) Indicates whether AWS Lambda should begin reading from the event source. Default is True.,C(batch_size) The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Default is 100.
        attribute :source_params
        validates :source_params, presence: true
      end
    end
  end
end

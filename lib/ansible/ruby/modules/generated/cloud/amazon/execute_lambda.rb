# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module executes AWS Lambda functions, allowing synchronous and asynchronous invocation.
      class Execute_lambda < Base
        # @return [String, nil] The name of the function to be invoked. This can only be used for invocations within the calling account. To invoke a function in another account, use I(function_arn) to specify the full ARN.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The name of the function to be invoked
        attribute :function_arn
        validates :function_arn, type: String

        # @return [:yes, :no, nil] If C(tail_log=yes), the result of the task will include the last 4 KB of the CloudWatch log for the function execution. Log tailing only works if you use synchronous invocation C(wait=yes). This is usually used for development or testing Lambdas.
        attribute :tail_log
        validates :tail_log, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to wait for the function results or not. If I(wait) is C(no), the task will not return any results. To wait for the Lambda function to complete, set C(wait=yes) and the result will be available in the I(output) key.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Do not *actually* invoke the function. A C(DryRun) call will check that the caller has permissions to call the function, especially for checking cross-account permissions.
        attribute :dry_run
        validates :dry_run, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Which version/alias of the function to run. This defaults to the C(LATEST) revision, but can be set to any existing version or alias. See https;//docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html for details.
        attribute :version_qualifier
        validates :version_qualifier, type: String

        # @return [Object, nil] A dictionary in any form to be provided as input to the Lambda function.
        attribute :payload
      end
    end
  end
end

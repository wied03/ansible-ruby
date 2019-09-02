# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the management of AWS Lambda policy statements. It is idempotent and supports "Check" mode.  Use module M(lambda) to manage the lambda function itself, M(lambda_alias) to manage function aliases, M(lambda_event) to manage event source mappings such as Kinesis streams, M(execute_lambda) to execute a lambda function and M(lambda_facts) to gather facts relating to one or more lambda functions.
      class Lambda_policy < Base
        # @return [Object] Name of the Lambda function whose resource policy you are updating by adding a new permission.,You can specify a function name (for example, Thumbnail ) or you can specify Amazon Resource Name (ARN) of the,function (for example, arn:aws:lambda:us-west-2:account-id:function:ThumbNail ). AWS Lambda also allows you to,specify partial ARN (for example, account-id:Thumbnail ). Note that the length constraint applies only to the,ARN. If you specify only the function name, it is limited to 64 character in length.
        attribute :function_name
        validates :function_name, presence: true

        # @return [:present, :absent] Describes the desired state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] Name of the function alias. Mutually exclusive with C(version).
        attribute :alias

        # @return [Object, nil] Version of the Lambda function. Mutually exclusive with C(alias).
        attribute :version

        # @return [Object] A unique statement identifier.
        attribute :statement_id
        validates :statement_id, presence: true

        # @return [Object] The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with lambda: followed by the API name (see Operations ). For example, lambda:CreateFunction . You can use wildcard (lambda:* ) to grant permission for all AWS Lambda actions.
        attribute :action
        validates :action, presence: true

        # @return [Object] The principal who is getting this permission. It can be Amazon S3 service Principal (s3.amazonaws.com ) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as sns.amazonaws.com . For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function.
        attribute :principal
        validates :principal, presence: true

        # @return [Object, nil] This is optional; however, when granting Amazon S3 permission to invoke your function, you should specify this field with the bucket Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified bucket can invoke the function.
        attribute :source_arn

        # @return [Object, nil] The AWS account ID (without a hyphen) of the source owner. For example, if the SourceArn identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the SourceArn ) owned by a specific account.
        attribute :source_account

        # @return [Object, nil] Token string representing source ARN or account. Mutually exclusive with C(source_arn) or C(source_account).
        attribute :event_source_token
      end
    end
  end
end

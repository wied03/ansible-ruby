# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Sns < Base
        # @return [String] Default message to send.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, nil] Subject line for email delivery.
        attribute :subject
        validates :subject, type: String

        # @return [String] The topic you want to publish to.
        attribute :topic
        validates :topic, presence: true, type: String

        # @return [Object, nil] Message to send to email-only subscription
        attribute :email

        # @return [Object, nil] Message to send to SQS-only subscription
        attribute :sqs

        # @return [String, nil] Message to send to SMS-only subscription
        attribute :sms
        validates :sms, type: String

        # @return [Object, nil] Message to send to HTTP-only subscription
        attribute :http

        # @return [Object, nil] Message to send to HTTPS-only subscription
        attribute :https

        # @return [Object, nil] AWS secret key. If not set then the value of the AWS_SECRET_KEY environment variable is used.
        attribute :aws_secret_key

        # @return [Object, nil] AWS access key. If not set then the value of the AWS_ACCESS_KEY environment variable is used.
        attribute :aws_access_key

        # @return [Object, nil] The AWS region to use. If not specified then the value of the EC2_REGION environment variable, if any, is used.
        attribute :region
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(sns) module sends notifications to a topic on your Amazon SNS account
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

        # @return [Hash, nil] Dictionary of message attributes. These are optional structured data entries to be sent along to the endpoint.,This is in AWS's distinct Name/Type/Value format; see example below.
        attribute :message_attributes
        validates :message_attributes, type: Hash

        # @return [:json, :string] The payload format to use for the message.,This must be 'json' to support non-default messages (`http`, `https`, `email`, `sms`, `sqs`). It must be 'string' to support message_attributes.
        attribute :message_structure
        validates :message_structure, presence: true, inclusion: {:in=>[:json, :string], :message=>"%{value} needs to be :json, :string"}
      end
    end
  end
end

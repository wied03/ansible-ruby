# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Launches or updates an AWS CloudFormation stack and waits for it complete.
      class Cloudformation < Base
        # @return [String] name of the cloudformation stack
        attribute :stack_name
        validates :stack_name, presence: true, type: String

        # @return [:true, :false, nil] If a stacks fails to form, rollback will remove the stack
        attribute :disable_rollback
        validates :disable_rollback, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] a list of hashes of all the template variables for the stack
        attribute :template_parameters

        # @return [String] If state is "present", stack will be created.  If state is "present" and if stack exists and template has changed, it will be updated. If state is "absent", stack will be removed.
        attribute :state
        validates :state, presence: true, type: String

        # @return [String, nil] The local path of the cloudformation template.,This must be the full path to the file, relative to the working directory. If using roles this may look like "roles/cloudformation/files/cloudformation-example.json".,If 'state' is 'present' and the stack does not exist yet, either 'template' or 'template_url' must be specified (but not both). If 'state' is present, the stack does exist, and neither 'template' nor 'template_url' are specified, the previous template will be reused.
        attribute :template
        validates :template, type: String

        # @return [Object, nil] The Simple Notification Service (SNS) topic ARNs to publish stack related events.
        attribute :notification_arns

        # @return [Object, nil] the path of the cloudformation stack policy. A policy cannot be removed once placed, but it can be modified. (for instance, [allow all updates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html#d0e9051)
        attribute :stack_policy

        # @return [Hash, nil] Dictionary of tags to associate with stack and its resources during stack creation. Can be updated later, updating tags removes previous entries.
        attribute :tags
        validates :tags, type: Hash

        # @return [String, nil] Location of file containing the template body. The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack.,If 'state' is 'present' and the stack does not exist yet, either 'template' or 'template_url' must be specified (but not both). If 'state' is present, the stack does exist, and neither 'template' nor 'template_url' are specified, the previous template will be reused.
        attribute :template_url
        validates :template_url, type: String

        # @return [:json, :yaml, nil] (deprecated) For local templates, allows specification of json or yaml format. Templates are now passed raw to CloudFormation regardless of format. This parameter is ignored since Ansible 2.3.
        attribute :template_format
        validates :template_format, inclusion: {:in=>[:json, :yaml], :message=>"%{value} needs to be :json, :yaml"}, allow_nil: true

        # @return [String, nil] The role that AWS CloudFormation assumes to create the stack. See the AWS CloudFormation Service Role docs U(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-servicerole.html)
        attribute :role_arn
        validates :role_arn, type: String
      end
    end
  end
end

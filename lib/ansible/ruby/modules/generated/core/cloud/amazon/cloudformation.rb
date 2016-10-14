# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Launches an AWS CloudFormation stack and waits for it complete.
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

        # @return [String, nil] The local path of the cloudformation template. This parameter is mutually exclusive with 'template_url'. Either one of them is required if "state" parameter is "present" Must give full path to the file, relative to the working directory. If using roles this may look like "roles/cloudformation/files/cloudformation-example.json"
        attribute :template
        validates :template, type: String

        # @return [Object, nil] The Simple Notification Service (SNS) topic ARNs to publish stack related events.
        attribute :notification_arns

        # @return [Object, nil] the path of the cloudformation stack policy
        attribute :stack_policy

        # @return [Hash, nil] Dictionary of tags to associate with stack and it's resources during stack creation. Cannot be updated later. Requires at least Boto version 2.6.0.
        attribute :tags
        validates :tags, type: Hash

        # @return [String] The AWS region to use. If not specified then the value of the AWS_REGION or EC2_REGION environment variable, if any, is used.
        attribute :region
        validates :region, presence: true, type: String

        # @return [String, nil] Location of file containing the template body. The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack. This parameter is mutually exclusive with 'template'. Either one of them is required if "state" parameter is "present"
        attribute :template_url
        validates :template_url, type: String

        # @return [:json, :yaml, nil] For local templates, allows specification of json or yaml format
        attribute :template_format
        validates :template_format, inclusion: {:in=>[:json, :yaml], :message=>"%{value} needs to be :json, :yaml"}, allow_nil: true
      end
    end
  end
end

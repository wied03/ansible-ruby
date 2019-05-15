# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the management of Lambda functions.
      class Lambda < Base
        # @return [String] The name you want to assign to the function you are uploading. Cannot be changed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Create or delete Lambda function
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The runtime environment for the Lambda function you are uploading. Required when creating a function. Use parameters as described in boto3 docs. Current example runtime environments are nodejs, nodejs4.3, java8 or python2.7,Required when C(state=present)
        attribute :runtime
        validates :runtime, type: String

        # @return [String, nil] The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. You may use the bare ARN if the role belongs to the same AWS account.,Required when C(state=present)
        attribute :role
        validates :role, type: String

        # @return [String, nil] The function within your code that Lambda calls to begin execution
        attribute :handler
        validates :handler, type: String

        # @return [String, nil] A .zip file containing your deployment package,If C(state=present) then either zip_file or s3_bucket must be present.
        attribute :zip_file
        validates :zip_file, type: String

        # @return [Object, nil] Amazon S3 bucket name where the .zip file containing your deployment package is stored,If C(state=present) then either zip_file or s3_bucket must be present.,s3_bucket and s3_key are required together
        attribute :s3_bucket

        # @return [Object, nil] The Amazon S3 object (the deployment package) key name you want to upload,s3_bucket and s3_key are required together
        attribute :s3_key

        # @return [Object, nil] The Amazon S3 object (the deployment package) version you want to upload.
        attribute :s3_object_version

        # @return [Object, nil] A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.
        attribute :description

        # @return [Integer, nil] The function maximum execution time in seconds after which Lambda should terminate the function.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] The amount of memory, in MB, your Lambda function is given
        attribute :memory_size
        validates :memory_size, type: Integer

        # @return [Array<String>, String, nil] List of subnet IDs to run Lambda function in. Use this option if you need to access resources in your VPC. Leave empty if you don't want to run the function in a VPC.
        attribute :vpc_subnet_ids
        validates :vpc_subnet_ids, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of VPC security group IDs to associate with the Lambda function. Required when vpc_subnet_ids is used.
        attribute :vpc_security_group_ids
        validates :vpc_security_group_ids, type: TypeGeneric.new(String)

        # @return [String, nil] A dictionary of environment variables the Lambda function is given.
        attribute :environment_variables
        validates :environment_variables, type: String

        # @return [Object, nil] The parent object that contains the target Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
        attribute :dead_letter_arn

        # @return [Hash, nil] tag dict to apply to the function (requires botocore 1.5.40 or above)
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end

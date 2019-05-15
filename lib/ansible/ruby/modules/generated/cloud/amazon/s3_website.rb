# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure an s3 bucket as a website
      class S3_website < Base
        # @return [String] Name of the s3 bucket
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The object key name to use when a 4XX class error occurs. To remove an error key, set to None.
        attribute :error_key
        validates :error_key, type: String

        # @return [String, nil] Describes the redirect behavior for every request to this s3 bucket website endpoint
        attribute :redirect_all_requests
        validates :redirect_all_requests, type: String

        # @return [Object, nil] AWS region to create the bucket in. If not set then the value of the AWS_REGION and EC2_REGION environment variables are checked, followed by the aws_region and ec2_region settings in the Boto config file.  If none of those are set the region defaults to the S3 Location: US Standard.\r\n
        attribute :region

        # @return [:present, :absent, nil] Add or remove s3 website configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html). The suffix must not include a slash character.\r\n
        attribute :suffix
        validates :suffix, type: String
      end
    end
  end
end

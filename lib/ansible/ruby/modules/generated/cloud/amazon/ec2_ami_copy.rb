# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Copies AMI from a source region to a destination region. B(Since version 2.3 this module depends on boto3.)
      class Ec2_ami_copy < Base
        # @return [String] The source region the AMI should be copied from.
        attribute :source_region
        validates :source_region, presence: true, type: String

        # @return [String] The ID of the AMI in source region that should be copied.
        attribute :source_image_id
        validates :source_image_id, presence: true, type: String

        # @return [String, nil] The name of the new AMI to copy. (As of 2.3 the default is 'default', in prior versions it was 'null'.)
        attribute :name
        validates :name, type: String

        # @return [String, nil] An optional human-readable string describing the contents and purpose of the new AMI.
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Whether or not the destination snapshots of the copied AMI should be encrypted.
        attribute :encrypted
        validates :encrypted, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] KMS key id used to encrypt image. If not specified, uses default EBS Customer Master Key (CMK) for your account.
        attribute :kms_key_id
        validates :kms_key_id, type: String

        # @return [:yes, :no, nil] Wait for the copied AMI to be in state 'available' before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds. Prior to 2.3 the default was 1200.,From 2.3-2.5 this option was deprecated in favor of boto3 waiter defaults. This was reenabled in 2.6 to allow timeouts greater than 10 minutes.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] A hash/dictionary of tags to add to the new copied AMI; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash

        # @return [Boolean, nil] Whether to use tags if the source AMI already exists in the target region. If this is set, and all tags match in an existing AMI, the AMI will not be copied again.
        attribute :tag_equality
        validates :tag_equality, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

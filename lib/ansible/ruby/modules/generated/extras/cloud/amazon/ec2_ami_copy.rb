# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Copies AMI from a source region to a destination region. This module has a dependency on python-boto >= 2.5
      class Ec2_ami_copy < Base
        # @return [String] the source region that AMI should be copied from
        attribute :source_region
        validates :source_region, presence: true, type: String

        # @return [String] the id of the image in source region that should be copied
        attribute :source_image_id
        validates :source_image_id, presence: true, type: String

        # @return [String, nil] The name of the new image to copy
        attribute :name
        validates :name, type: String

        # @return [String, nil] An optional human-readable string describing the contents and purpose of the new AMI.
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Whether or not to encrypt the target image
        attribute :encrypted
        validates :encrypted, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] KMS key id used to encrypt image. If not specified, uses default EBS Customer Master Key (CMK) for your account.
        attribute :kms_key_id
        validates :kms_key_id, type: String

        # @return [:yes, :no, nil] wait for the copied AMI to be in state 'available' before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] a hash/dictionary of tags to add to the new copied AMI; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end

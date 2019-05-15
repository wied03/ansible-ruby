# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about ec2 AMIs
      class Ec2_ami_facts < Base
        # @return [String, nil] One or more image IDs.
        attribute :image_ids
        validates :image_ids, type: String

        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value.,See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html) for possible filters.,Filter names and values are case sensitive.
        attribute :filters
        validates :filters, type: Hash

        # @return [String, nil] Filter the images by the owner. Valid options are an AWS account ID, self,,or an AWS owner alias ( amazon | aws-marketplace | microsoft ).
        attribute :owners
        validates :owners, type: String

        # @return [Object, nil] Filter images by users with explicit launch permissions. Valid options are an AWS account ID, self, or all (public AMIs).
        attribute :executable_users

        # @return [Boolean, nil] Describe attributes (like launchPermission) of the images found.
        attribute :describe_image_attributes
        validates :describe_image_attributes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

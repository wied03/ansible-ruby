# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Returns list of matching AMIs with AMI ID, along with other useful information
      # Can search AMIs with different owners
      # Can search by matching tag(s), by AMI name and/or other criteria
      # Results can be sorted and sliced
      class Ec2_ami_find < Base
        # @return [Object] The AWS region to use.
        attribute :region
        validates :region, presence: true

        # @return [String, nil] Search AMIs owned by the specified owner,Can specify an AWS account ID, or one of the special IDs 'self', 'amazon' or 'aws-marketplace',If not specified, all EC2 AMIs in the specified region will be searched.,You can include wildcards in many of the search options. An asterisk (*) matches zero or more characters, and a question mark (?) matches exactly one character. You can escape special characters using a backslash (\) before the character. For example, a value of \*amazon\?\\ searches for the literal string *amazon?\.
        attribute :owner
        validates :owner, type: String

        # @return [Object, nil] An AMI ID to match.
        attribute :ami_id

        # @return [Hash, nil] A hash/dictionary of tags to match for the AMI.
        attribute :ami_tags
        validates :ami_tags, type: Hash

        # @return [Object, nil] An architecture type to match (e.g. x86_64).
        attribute :architecture

        # @return [Object, nil] A hypervisor type type to match (e.g. xen).
        attribute :hypervisor

        # @return [Symbol, nil] Whether or not the image(s) are public.
        attribute :is_public
        validates :is_public, type: Symbol

        # @return [String, nil] An AMI name to match.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Platform type to match.
        attribute :platform

        # @return [Object, nil] Marketplace product code to match.
        attribute :product_code

        # @return [:name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type, nil] Optional attribute which with to sort the results.,If specifying 'tag', the 'tag_name' parameter is required.,Starting at version 2.1, additional sort choices of architecture, block_device_mapping, creationDate, hypervisor, is_public, location, owner_id, platform, root_device_name, root_device_type, state, and virtualization_type are supported.
        attribute :sort
        validates :sort, inclusion: {:in=>[:name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type], :message=>"%{value} needs to be :name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type"}, allow_nil: true

        # @return [Object, nil] Tag name with which to sort results.,Required when specifying 'sort=tag'.
        attribute :sort_tag

        # @return [:ascending, :descending, nil] Order in which to sort results.,Only used when the 'sort' parameter is specified.
        attribute :sort_order
        validates :sort_order, inclusion: {:in=>[:ascending, :descending], :message=>"%{value} needs to be :ascending, :descending"}, allow_nil: true

        # @return [Object, nil] Which result to start with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_start

        # @return [Integer, nil] Which result to end with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_end
        validates :sort_end, type: Integer

        # @return [String, nil] AMI state to match.
        attribute :state
        validates :state, type: String

        # @return [Object, nil] Virtualization type to match (e.g. hvm).
        attribute :virtualization_type

        # @return [Object, nil] Root device type to match (e.g. ebs, instance-store).
        attribute :root_device_type

        # @return [:success, :fail, nil] What to do when no results are found.,'success' reports success and returns an empty array,'fail' causes the module to report failure
        attribute :no_result_action
        validates :no_result_action, inclusion: {:in=>[:success, :fail], :message=>"%{value} needs to be :success, :fail"}, allow_nil: true
      end
    end
  end
end

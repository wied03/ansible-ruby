# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami_find < Base
        # @return [Object] The AWS region to use.
        attribute :region
        validates :region, presence: true

        # @return [String] Search AMIs owned by the specified owner,Can specify an AWS account ID, or one of the special IDs 'self', 'amazon' or 'aws-marketplace',If not specified, all EC2 AMIs in the specified region will be searched.,You can include wildcards in many of the search options. An asterisk (*) matches zero or more characters, and a question mark (?) matches exactly one character. You can escape special characters using a backslash (\) before the character. For example, a value of \*amazon\?\\ searches for the literal string *amazon?\.
        attribute :owner
        validates :owner, type: String

        # @return [Object] An AMI ID to match.
        attribute :ami_id

        # @return [Hash] A hash/dictionary of tags to match for the AMI.
        attribute :ami_tags
        validates :ami_tags, type: Hash

        # @return [Object] An architecture type to match (e.g. x86_64).
        attribute :architecture

        # @return [Object] A hypervisor type type to match (e.g. xen).
        attribute :hypervisor

        # @return [:yes, :no, nil] Whether or not the image(s) are public.
        attribute :is_public
        validates :is_public, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] An AMI name to match.
        attribute :name
        validates :name, type: String

        # @return [Object] Platform type to match.
        attribute :platform

        # @return [:name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type, nil] Optional attribute which with to sort the results.,If specifying 'tag', the 'tag_name' parameter is required.,Starting at version 2.1, additional sort choices of architecture, block_device_mapping, creationDate, hypervisor, is_public, location, owner_id, platform, root_device_name, root_device_type, state, and virtualization_type are supported.
        attribute :sort
        validates :sort, inclusion: {:in=>[:name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type], :message=>"%{value} needs to be :name, :description, :tag, :architecture, :block_device_mapping, :creationDate, :hypervisor, :is_public, :location, :owner_id, :platform, :root_device_name, :root_device_type, :state, :virtualization_type"}, allow_nil: true

        # @return [Object] Tag name with which to sort results.,Required when specifying 'sort=tag'.
        attribute :sort_tag

        # @return [:ascending, :descending, nil] Order in which to sort results.,Only used when the 'sort' parameter is specified.
        attribute :sort_order
        validates :sort_order, inclusion: {:in=>[:ascending, :descending], :message=>"%{value} needs to be :ascending, :descending"}, allow_nil: true

        # @return [Object] Which result to start with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_start

        # @return [Fixnum] Which result to end with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_end
        validates :sort_end, type: Fixnum

        # @return [String] AMI state to match.
        attribute :state
        validates :state, type: String

        # @return [Object] Virtualization type to match (e.g. hvm).
        attribute :virtualization_type

        # @return [:success, :fail, nil] What to do when no results are found.,'success' reports success and returns an empty array,'fail' causes the module to report failure
        attribute :no_result_action
        validates :no_result_action, inclusion: {:in=>[:success, :fail], :message=>"%{value} needs to be :success, :fail"}, allow_nil: true
      end
    end
  end
end

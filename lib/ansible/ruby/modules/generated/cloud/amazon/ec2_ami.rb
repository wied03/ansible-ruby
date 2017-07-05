# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or deletes ec2 images.
      class Ec2_ami < Base
        # @return [String, nil] Instance ID to create the AMI from.
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String, nil] The name of the new AMI.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The target architecture of the image to register
        attribute :architecture
        validates :architecture, type: String

        # @return [Object, nil] The target kernel id of the image to register
        attribute :kernel_id

        # @return [String, nil] The virtualization type of the image to register
        attribute :virtualization_type
        validates :virtualization_type, type: String

        # @return [String, nil] The root device name of the image to register
        attribute :root_device_name
        validates :root_device_name, type: String

        # @return [:yes, :no, nil] Wait for the AMI to be in state 'available' before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:absent, :present, nil] Create or deregister/delete AMI.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Human-readable string describing the contents and purpose of the AMI.
        attribute :description

        # @return [Boolean, nil] Flag indicating that the bundling process should not attempt to shutdown the instance before bundling. If this flag is True, the responsibility of maintaining file system integrity is left to the owner of the instance.
        attribute :no_reboot
        validates :no_reboot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Image ID to be deregistered.
        attribute :image_id
        validates :image_id, type: String

        # @return [Array<Hash>, Hash, nil] List of device hashes/dictionaries with custom configurations (same block-device-mapping parameters),Valid properties include: device_name, volume_type, size (in GB), delete_on_termination (boolean), no_device (boolean), snapshot_id, iops (for io1 volume_type)
        attribute :device_mapping
        validates :device_mapping, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Delete snapshots when deregistering the AMI.
        attribute :delete_snapshot
        validates :delete_snapshot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash, nil] A dictionary of tags to add to the new image; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash

        # @return [Hash, nil] Users and groups that should be able to launch the AMI. Expects dictionary with a key of user_ids and/or group_names. user_ids should be a list of account ids. group_name should be a list of groups, "all" is the only acceptable value currently.
        attribute :launch_permissions
        validates :launch_permissions, type: Hash
      end
    end
  end
end

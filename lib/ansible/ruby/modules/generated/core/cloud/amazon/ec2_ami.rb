# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami < Base
        # @return [String] instance id of the image to create
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String] The name of the new image to create
        attribute :name
        validates :name, type: String

        # @return [:yes, :no, nil] wait for the AMI to be in state 'available' before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [String] create or deregister/delete image
        attribute :state
        validates :state, type: String

        # @return [Object] An optional human-readable string describing the contents and purpose of the AMI.
        attribute :description

        # @return [:yes, :no, nil] An optional flag indicating that the bundling process should not attempt to shutdown the instance before bundling. If this flag is True, the responsibility of maintaining file system integrity is left to the owner of the instance. The default choice is "no".
        attribute :no_reboot
        validates :no_reboot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Image ID to be deregistered.
        attribute :image_id
        validates :image_id, type: String

        # @return [Array] An optional list of device hashes/dictionaries with custom configurations (same block-device-mapping parameters),Valid properties include: device_name, volume_type, size (in GB), delete_on_termination (boolean), no_device (boolean), snapshot_id, iops (for io1 volume_type)
        attribute :device_mapping
        validates :device_mapping, type: Array

        # @return [:yes, :no, nil] Whether or not to delete snapshots when deregistering AMI.
        attribute :delete_snapshot
        validates :delete_snapshot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash] a dictionary of tags to add to the new image; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash

        # @return [Hash] Users and groups that should be able to launch the ami. Expects dictionary with a key of user_ids and/or group_names. user_ids should be a list of account ids. group_name should be a list of groups, "all" is the only acceptable value currently.
        attribute :launch_permissions
        validates :launch_permissions, type: Hash
      end
    end
  end
end

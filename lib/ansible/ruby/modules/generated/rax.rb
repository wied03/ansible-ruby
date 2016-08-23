# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax < Base
        # @return [TrueClass] Whether or not to increment a single number with the name of the created servers. Only applicable when used with the I(group) attribute or meta key.
        attribute :auto_increment
        validates :auto_increment, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Whether or not to boot the instance from a Cloud Block Storage volume. If C(yes) and I(image) is specified a new volume will be created at boot time. I(boot_volume_size) is required with I(image) to create a new volume at boot time.
        attribute :boot_from_volume
        validates :boot_from_volume, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Cloud Block Storage ID or Name to use as the boot volume of the instance
        attribute :boot_volume

        # @return [Fixnum] Size of the volume to create in Gigabytes. This is only required with I(image) and I(boot_from_volume).
        attribute :boot_volume_size
        validates :boot_volume_size, type: Fixnum

        # @return [Object] Whether the I(boot_volume) or newly created volume from I(image) will be terminated when the server is terminated
        attribute :boot_volume_terminate

        # @return [Object] Attach read-only configuration drive to server as label config-2
        attribute :config_drive
        validates :config_drive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] number of instances to launch
        attribute :count
        validates :count, type: Fixnum

        # @return [Fixnum] number count to start at
        attribute :count_offset
        validates :count_offset, type: Fixnum

        # @return [String] Disk partitioning strategy
        attribute :disk_config
        validates :disk_config, inclusion: {:in=>[:auto, :manual], :message=>"%{value} needs to be :auto, :manual"}, allow_nil: true

        # @return [Object] Explicitly ensure an exact count of instances, used with state=active/present. If specified as C(yes) and I(count) is less than the servers matched, servers will be deleted to match the count. If the number of matched servers is fewer than specified in I(count) additional servers will be added.
        attribute :exact_count
        validates :exact_count, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] A hash of key/value pairs to be used when creating the cloudservers client. This is considered an advanced option, use it wisely and with caution.
        attribute :extra_client_args

        # @return [Object] A hash of key/value pairs to be used when creating a new server. This is considered an advanced option, use it wisely and with caution.
        attribute :extra_create_args

        # @return [Object] Files to insert into the instance. remotefilename:localcontent
        attribute :files

        # @return [Object] flavor to use for the instance
        attribute :flavor

        # @return [Object] host group to assign to server, is also used for idempotent operations to ensure a specific number of instances
        attribute :group

        # @return [Object] image to use for the instance. Can be an C(id), C(human_id) or C(name). With I(boot_from_volume), a Cloud Block Storage volume will be created with this image
        attribute :image

        # @return [Object] list of instance ids, currently only used when state='absent' to remove instances
        attribute :instance_ids

        # @return [Object] key pair to use on the instance
        attribute :key_name

        # @return [Object] A hash of metadata to associate with the instance
        attribute :meta

        # @return [String] Name to give the instance
        attribute :name
        validates :name, type: String

        # @return [Array] The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).
        attribute :networks
        validates :networks, type: Array

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Data to be uploaded to the servers config drive. This option implies I(config_drive). Can be a file path or a string
        attribute :user_data

        # @return [String] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end

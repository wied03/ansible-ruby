# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Profitbricks_volume < Base
        # @return [String] The datacenter in which to create the volumes.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] The name of the volumes. You can enumerate the names using auto_increment.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Fixnum] The size of the volume.
        attribute :size
        validates :size, type: Fixnum

        # @return [:IDE, :VIRTIO, nil] The bus type.
        attribute :bus
        validates :bus, inclusion: {:in=>[:IDE, :VIRTIO], :message=>"%{value} needs to be :IDE, :VIRTIO"}, allow_nil: true

        # @return [Object] The system image ID for the volume, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8. This can also be a snapshot image ID.
        attribute :image
        validates :image, presence: true

        # @return [String] The disk type. Currently only HDD.
        attribute :disk_type
        validates :disk_type, type: String

        # @return [:LINUX, :WINDOWS, :UNKNOWN, :OTHER, nil] The licence type for the volume. This is used when the image is non-standard.
        attribute :licence_type
        validates :licence_type, inclusion: {:in=>[:LINUX, :WINDOWS, :UNKNOWN, :OTHER], :message=>"%{value} needs to be :LINUX, :WINDOWS, :UNKNOWN, :OTHER"}, allow_nil: true

        # @return [Fixnum] The number of volumes you wish to create.
        attribute :count
        validates :count, type: Fixnum

        # @return [:yes, :no, nil] Whether or not to increment a single number in the name for created virtual machines.
        attribute :auto_increment
        validates :auto_increment, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array] list of instance ids, currently only used when state='absent' to remove instances.
        attribute :instance_ids
        validates :instance_ids, type: Array

        # @return [Object] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the datacenter to be created before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [:present, :absent, nil] create or terminate datacenters
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Sl_vm < Base
        # @return [Object] Instance Id of the virtual instance to perform action option
        attribute :instance_id

        # @return [Object] Hostname to be provided to a virtual instance
        attribute :hostname

        # @return [Object] Domain name to be provided to a virtual instance
        attribute :domain

        # @return [Object] Datacenter for the virtual instance to be deployed
        attribute :datacenter

        # @return [Object] Tag or list of tags to be provided to a virtual instance
        attribute :tags

        # @return [TrueClass] Flag to determine if the instance should be hourly billed
        attribute :hourly
        validates :hourly, type: TrueClass

        # @return [Object] Flag to determine if the instance should be private only
        attribute :private

        # @return [Object] Falg to determine if the instance should be deployed in dedicated space
        attribute :dedicated

        # @return [TrueClass] Flag to determine if local disk should be used for the new instance
        attribute :local_disk
        validates :local_disk, type: TrueClass

        # @return [Object] Count of cpus to be assigned to new virtual instance
        attribute :cpus
        validates :cpus, presence: true

        # @return [Object] Amount of memory to be assigned to new virtual instance
        attribute :memory
        validates :memory, presence: true

        # @return [Array] List of disk sizes to be assigned to new virtual instance
        attribute :disks
        validates :disks, presence: true, type: Array

        # @return [Object] OS Code to be used for new virtual instance
        attribute :os_code

        # @return [Object] Image Template to be used for new virtual instance
        attribute :image_id

        # @return [Fixnum] NIC Speed to be assigned to new virtual instance
        attribute :nic_speed
        validates :nic_speed, type: Fixnum

        # @return [Object] VLAN by its Id to be assigned to the public NIC
        attribute :public_vlan

        # @return [Object] VLAN by its Id to be assigned to the private NIC
        attribute :private_vlan

        # @return [Object] List of ssh keys by their Id to be assigned to a virtual instance
        attribute :ssh_keys

        # @return [Object] URL of a post provisioning script ot be loaded and exectued on virtual instance
        attribute :post_uri

        # @return [String] Create, or cancel a virtual instance. Specify "present" for create, "absent" to cancel.
        attribute :state
        validates :state, type: String

        # @return [TrueClass] Flag used to wait for active status before returning
        attribute :wait
        validates :wait, type: TrueClass

        # @return [Fixnum] time in seconds before wait returns
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end

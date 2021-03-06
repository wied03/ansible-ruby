# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or cancels SoftLayer instances.
      # When created, optionally waits for it to be 'running'.
      class Sl_vm < Base
        # @return [Object, nil] Instance Id of the virtual instance to perform action option.
        attribute :instance_id

        # @return [Object, nil] Hostname to be provided to a virtual instance.
        attribute :hostname

        # @return [Object, nil] Domain name to be provided to a virtual instance.
        attribute :domain

        # @return [Object, nil] Datacenter for the virtual instance to be deployed.
        attribute :datacenter

        # @return [Object, nil] Tag or list of tags to be provided to a virtual instance.
        attribute :tags

        # @return [:yes, :no, nil] Flag to determine if the instance should be hourly billed.
        attribute :hourly
        validates :hourly, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Flag to determine if the instance should be private only.
        attribute :private
        validates :private, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Flag to determine if the instance should be deployed in dedicated space.
        attribute :dedicated
        validates :dedicated, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Flag to determine if local disk should be used for the new instance.
        attribute :local_disk
        validates :local_disk, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Count of cpus to be assigned to new virtual instance.
        attribute :cpus
        validates :cpus, presence: true

        # @return [Object] Amount of memory to be assigned to new virtual instance.
        attribute :memory
        validates :memory, presence: true

        # @return [Integer] List of disk sizes to be assigned to new virtual instance.
        attribute :disks
        validates :disks, presence: true, type: Integer

        # @return [Object, nil] OS Code to be used for new virtual instance.
        attribute :os_code

        # @return [Object, nil] Image Template to be used for new virtual instance.
        attribute :image_id

        # @return [Integer, nil] NIC Speed to be assigned to new virtual instance.
        attribute :nic_speed
        validates :nic_speed, type: Integer

        # @return [Object, nil] VLAN by its Id to be assigned to the public NIC.
        attribute :public_vlan

        # @return [Object, nil] VLAN by its Id to be assigned to the private NIC.
        attribute :private_vlan

        # @return [Object, nil] List of ssh keys by their Id to be assigned to a virtual instance.
        attribute :ssh_keys

        # @return [Object, nil] URL of a post provisioning script to be loaded and executed on virtual instance.
        attribute :post_uri

        # @return [:absent, :present, nil] Create, or cancel a virtual instance.,Specify C(present) for create, C(absent) to cancel.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Flag used to wait for active status before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Time in seconds before wait returns.
        attribute :wait_time
        validates :wait_time, type: Integer
      end
    end
  end
end

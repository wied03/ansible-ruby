# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, update, start, stop, and reboot a ProfitBricks virtual machine. When the virtual machine is created it can optionally wait for it to be 'running' before returning. This module has a dependency on profitbricks >= 1.0.0
      class Profitbricks < Base
        # @return [Boolean, nil] Whether or not to increment a single number in the name for created virtual machines.
        attribute :auto_increment
        validates :auto_increment, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The name of the virtual machine.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The system image ID for creating the virtual machine, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8.
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object, nil] Password set for the administrative user.
        attribute :image_password

        # @return [Object, nil] Public SSH keys allowing access to the virtual machine.
        attribute :ssh_keys

        # @return [String, nil] The datacenter to provision this virtual machine.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Integer, nil] The number of CPU cores to allocate to the virtual machine.
        attribute :cores
        validates :cores, type: Integer

        # @return [Integer, nil] The amount of memory to allocate to the virtual machine.
        attribute :ram
        validates :ram, type: Integer

        # @return [:AMD_OPTERON, :INTEL_XEON, nil] The CPU family type to allocate to the virtual machine.
        attribute :cpu_family
        validates :cpu_family, inclusion: {:in=>[:AMD_OPTERON, :INTEL_XEON], :message=>"%{value} needs to be :AMD_OPTERON, :INTEL_XEON"}, allow_nil: true

        # @return [Integer, nil] The size in GB of the boot volume.
        attribute :volume_size
        validates :volume_size, type: Integer

        # @return [:IDE, :VIRTIO, nil] The bus type for the volume.
        attribute :bus
        validates :bus, inclusion: {:in=>[:IDE, :VIRTIO], :message=>"%{value} needs to be :IDE, :VIRTIO"}, allow_nil: true

        # @return [Array<String>, String, nil] list of instance ids, currently only used when state='absent' to remove instances.
        attribute :instance_ids
        validates :instance_ids, type: TypeGeneric.new(String)

        # @return [Integer, nil] The number of virtual machines to create.
        attribute :count
        validates :count, type: Integer

        # @return [:"us/las", :"de/fra", :"de/fkb", nil] The datacenter location. Use only if you want to create the Datacenter or else this value is ignored.
        attribute :location
        validates :location, inclusion: {:in=>[:"us/las", :"de/fra", :"de/fkb"], :message=>"%{value} needs to be :\"us/las\", :\"de/fra\", :\"de/fkb\""}, allow_nil: true

        # @return [Boolean, nil] This will assign the machine to the public LAN. If no LAN exists with public Internet access it is created.
        attribute :assign_public_ip
        validates :assign_public_ip, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The ID of the LAN you wish to add the servers to.
        attribute :lan
        validates :lan, type: Integer

        # @return [Object, nil] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.
        attribute :subscription_user

        # @return [Object, nil] THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:yes, :no, nil] remove the bootVolume of the virtual machine you're destroying.
        attribute :remove_boot_volume
        validates :remove_boot_volume, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:running, :stopped, :absent, :present, nil] create or terminate instances
        attribute :state
        validates :state, inclusion: {:in=>[:running, :stopped, :absent, :present], :message=>"%{value} needs to be :running, :stopped, :absent, :present"}, allow_nil: true
      end
    end
  end
end

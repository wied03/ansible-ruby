# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Profitbricks < Base
        # @return [:yes, :no, nil] Whether or not to increment a single number in the name for created virtual machines.
        attribute :auto_increment
        validates :auto_increment, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The name of the virtual machine.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The system image ID for creating the virtual machine, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8.
        attribute :image
        validates :image, presence: true, type: String

        # @return [String] The Datacenter to provision this virtual machine.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Fixnum] The number of CPU cores to allocate to the virtual machine.
        attribute :cores
        validates :cores, type: Fixnum

        # @return [Fixnum] The amount of memory to allocate to the virtual machine.
        attribute :ram
        validates :ram, type: Fixnum

        # @return [Fixnum] The size in GB of the boot volume.
        attribute :volume_size
        validates :volume_size, type: Fixnum

        # @return [:IDE, :VIRTIO, nil] The bus type for the volume.
        attribute :bus
        validates :bus, inclusion: {:in=>[:IDE, :VIRTIO], :message=>"%{value} needs to be :IDE, :VIRTIO"}, allow_nil: true

        # @return [Array] list of instance ids, currently only used when state='absent' to remove instances.
        attribute :instance_ids
        validates :instance_ids, type: Array

        # @return [Fixnum] The number of virtual machines to create.
        attribute :count
        validates :count, type: Fixnum

        # @return [:"us/las", :"us/lasdev", :"de/fra", :"de/fkb", nil] The datacenter location. Use only if you want to create the Datacenter or else this value is ignored.
        attribute :location
        validates :location, inclusion: {:in=>[:"us/las", :"us/lasdev", :"de/fra", :"de/fkb"], :message=>"%{value} needs to be :\"us/las\", :\"us/lasdev\", :\"de/fra\", :\"de/fkb\""}, allow_nil: true

        # @return [TrueClass] This will assign the machine to the public LAN. If no LAN exists with public Internet access it is created.
        attribute :assign_public_ip
        validates :assign_public_ip, type: TrueClass

        # @return [Fixnum] The ID of the LAN you wish to add the servers to.
        attribute :lan
        validates :lan, type: Fixnum

        # @return [Object] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

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

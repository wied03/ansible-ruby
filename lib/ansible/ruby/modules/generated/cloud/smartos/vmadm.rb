# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SmartOS virtual machines through vmadm(1M).
      class Vmadm < Base
        # @return [Object, nil] When enabled, the zone dataset will be mounted on C(/zones/archive) upon removal.
        attribute :archive_on_delete

        # @return [Object, nil] Whether or not a VM is booted when the system is rebooted.
        attribute :autoboot

        # @return [:joyent, :"joyent-minimal", :kvm, :lx] Type of virtual machine.
        attribute :brand
        validates :brand, presence: true, inclusion: {:in=>[:joyent, :"joyent-minimal", :kvm, :lx], :message=>"%{value} needs to be :joyent, :\"joyent-minimal\", :kvm, :lx"}

        # @return [Object, nil] Set the boot order for KVM VMs.
        attribute :boot

        # @return [Object, nil] Sets a limit on the amount of CPU time that can be used by a VM. Use C(0) for no cap.
        attribute :cpu_cap

        # @return [Object, nil] Sets a limit on the number of fair share scheduler (FSS) CPU shares for a VM. This limit is relative to all other VMs on the system.
        attribute :cpu_shares

        # @return [:qemu64, :host, nil] Control the type of virtual CPU exposed to KVM VMs.
        attribute :cpu_type
        validates :cpu_type, inclusion: {:in=>[:qemu64, :host], :message=>"%{value} needs to be :qemu64, :host"}, allow_nil: true

        # @return [Object, nil] Metadata to be set and associated with this VM, this contain customer modifiable keys.
        attribute :customer_metadata

        # @return [Object, nil] Whether to delegate a ZFS dataset to an OS VM.
        attribute :delegate_dataset

        # @return [Object, nil] Default value for a virtual disk model for KVM guests.
        attribute :disk_driver

        # @return [Object, nil] A list of disks to add, valid properties are documented in vmadm(1M).
        attribute :disks

        # @return [Object, nil] Domain value for C(/etc/hosts).
        attribute :dns_domain

        # @return [Object, nil] Docker images need this flag enabled along with the I(brand) set to C(lx).
        attribute :docker

        # @return [Object, nil] Mount additional filesystems into an OS VM.
        attribute :filesystems

        # @return [Boolean, nil] Enables the firewall, allowing fwadm(1M) rules to be applied.
        attribute :firewall_enabled
        validates :firewall_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Force a particular action (i.e. stop or delete a VM).
        attribute :force

        # @return [Object, nil] Comma separated list of filesystem types this zone is allowed to mount.
        attribute :fs_allowed

        # @return [Object, nil] Zone/VM hostname.
        attribute :hostname

        # @return [String, nil] Image UUID.
        attribute :image_uuid
        validates :image_uuid, type: String

        # @return [Object, nil] Adds an C(@indestructible) snapshot to delegated datasets.
        attribute :indestructible_delegated

        # @return [Boolean, nil] Adds an C(@indestructible) snapshot to zoneroot.
        attribute :indestructible_zoneroot
        validates :indestructible_zoneroot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] Metadata to be set and associated with this VM, this contains operator generated keys.
        attribute :internal_metadata
        validates :internal_metadata, type: Hash

        # @return [Object, nil] List of namespaces to be set as I(internal_metadata-only); these namespaces will come from I(internal_metadata) rather than I(customer_metadata).
        attribute :internal_metadata_namespace

        # @return [Object, nil] Kernel version to emulate for LX VMs.
        attribute :kernel_version

        # @return [Object, nil] Set (comma separated) list of privileges the zone is allowed to use.
        attribute :limit_priv

        # @return [Object, nil] Resolvers in C(/etc/resolv.conf) will be updated when updating the I(resolvers) property.
        attribute :maintain_resolvers

        # @return [Object, nil] Total amount of memory (in MiBs) on the host that can be locked by this VM.
        attribute :max_locked_memory

        # @return [Object, nil] Maximum number of lightweight processes this VM is allowed to have running.
        attribute :max_lwps

        # @return [Object, nil] Maximum amount of memory (in MiBs) on the host that the VM is allowed to use.
        attribute :max_physical_memory

        # @return [Object, nil] Maximum amount of virtual memory (in MiBs) the VM is allowed to use.
        attribute :max_swap

        # @return [Object, nil] Timeout in seconds (or 0 to disable) for the C(svc:/smartdc/mdata:execute) service that runs user-scripts in the zone.
        attribute :mdata_exec_timeout

        # @return [Object, nil] Name of the VM. vmadm(1M) uses this as an optional name.
        attribute :name

        # @return [Object, nil] Default value for a virtual NIC model for KVM guests.
        attribute :nic_driver

        # @return [Array<Hash>, Hash, nil] A list of nics to add, valid properties are documented in vmadm(1M).
        attribute :nics
        validates :nics, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Consider the provisioning complete when the VM first starts, rather than when the VM has rebooted.
        attribute :nowait

        # @return [Object, nil] Additional qemu arguments for KVM guests. This overwrites the default arguments provided by vmadm(1M) and should only be used for debugging.
        attribute :qemu_opts

        # @return [Object, nil] Additional qemu cmdline arguments for KVM guests.
        attribute :qemu_extra_opts

        # @return [Integer, nil] Quota on zone filesystems (in MiBs).
        attribute :quota
        validates :quota, type: Integer

        # @return [Object, nil] Amount of virtual RAM for a KVM guest (in MiBs).
        attribute :ram

        # @return [Object, nil] List of resolvers to be put into C(/etc/resolv.conf).
        attribute :resolvers

        # @return [Object, nil] Dictionary that maps destinations to gateways, these will be set as static routes in the VM.
        attribute :routes

        # @return [Object, nil] Addition options for SPICE-enabled KVM VMs.
        attribute :spice_opts

        # @return [Object, nil] Password required to connect to SPICE. By default no password is set. Please note this can be read from the Global Zone.
        attribute :spice_password

        # @return [:present, :absent, :stopped, :restarted] States for the VM to be in. Please note that C(present), C(stopped) and C(restarted) operate on a VM that is currently provisioned. C(present) means that the VM will be created if it was absent, and that it will be in a running state. C(absent) will shutdown the zone before removing it. C(stopped) means the zone will be created if it doesn't exist already, before shutting it down.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :stopped, :restarted], :message=>"%{value} needs to be :present, :absent, :stopped, :restarted"}

        # @return [Object, nil] Amount of memory (in MiBs) that will be available in the VM for the C(/tmp) filesystem.
        attribute :tmpfs

        # @return [String, nil] UUID of the VM. Can either be a full UUID or C(*) for all VMs.
        attribute :uuid
        validates :uuid, type: String

        # @return [Object, nil] Number of virtual CPUs for a KVM guest.
        attribute :vcpus

        # @return [Object, nil] Specify VGA emulation used by KVM VMs.
        attribute :vga

        # @return [Object, nil] Number of packets that can be sent in a single flush of the tx queue of virtio NICs.
        attribute :virtio_txburst

        # @return [Object, nil] Timeout (in nanoseconds) for the TX timer of virtio NICs.
        attribute :virtio_txtimer

        # @return [Object, nil] Password required to connect to VNC. By default no password is set. Please note this can be read from the Global Zone.
        attribute :vnc_password

        # @return [Object, nil] TCP port to listen of the VNC server. Or set C(0) for random, or C(-1) to disable.
        attribute :vnc_port

        # @return [Object, nil] Specifies compression algorithm used for this VMs data dataset. This option only has effect on delegated datasets.
        attribute :zfs_data_compression

        # @return [Object, nil] Suggested block size (power of 2) for files in the delegated dataset's filesystem.
        attribute :zfs_data_recsize

        # @return [Object, nil] Maximum number of filesystems the VM can have.
        attribute :zfs_filesystem_limit

        # @return [Object, nil] IO throttle priority value relative to other VMs.
        attribute :zfs_io_priority

        # @return [Object, nil] Specifies compression algorithm used for this VMs root dataset. This option only has effect on the zoneroot dataset.
        attribute :zfs_root_compression

        # @return [Object, nil] Suggested block size (power of 2) for files in the zoneroot dataset's filesystem.
        attribute :zfs_root_recsize

        # @return [Object, nil] Number of snapshots the VM can have.
        attribute :zfs_snapshot_limit

        # @return [Object, nil] ZFS pool the VM's zone dataset will be created in.
        attribute :zpool
      end
    end
  end
end

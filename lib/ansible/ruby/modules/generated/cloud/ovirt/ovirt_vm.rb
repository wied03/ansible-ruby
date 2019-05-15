# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages whole lifecycle of the Virtual Machine(VM) in oVirt/RHV.
      # Since VM can hold many states in oVirt/RHV, this see notes to see how the states of the VM are handled.
      class Ovirt_vm < Base
        # @return [String, nil] Name of the Virtual Machine to manage.,If VM don't exists C(name) is required. Otherwise C(id) or C(name) can be used.
        attribute :name
        validates :name, type: String

        # @return [String, nil] ID of the Virtual Machine to manage.
        attribute :id
        validates :id, type: String

        # @return [:absent, :next_run, :present, :registered, :running, :stopped, :suspended, nil] Should the Virtual Machine be running/stopped/present/absent/suspended/next_run/registered. When C(state) is I(registered) and the unregistered VM's name belongs to an already registered in engine VM in the same DC then we fail to register the unregistered template.,I(present) state will create/update VM and don't change its state if it already exists.,I(running) state will create/update VM and start it.,I(next_run) state updates the VM and if the VM has next run configuration it will be rebooted.,Please check I(notes) to more detailed description of states.,I(registered) is supported since 2.4.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :next_run, :present, :registered, :running, :stopped, :suspended], :message=>"%{value} needs to be :absent, :next_run, :present, :registered, :running, :stopped, :suspended"}, allow_nil: true

        # @return [String, nil] Name of the cluster, where Virtual Machine should be created.,Required if creating VM.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] Boolean indication whether to allow partial registration of Virtual Machine when C(state) is registered.
        attribute :allow_partial_import
        validates :allow_partial_import, type: String

        # @return [Array<Hash>, Hash, nil] Mapper which maps an external virtual NIC profile to one that exists in the engine when C(state) is registered. vnic_profile is described by the following dictionary:,C(source_network_name): The network name of the source network.,C(source_profile_name): The profile name related to the source network.,C(target_profile_id): The id of the target profile id to be mapped to in the engine.
        attribute :vnic_profile_mappings
        validates :vnic_profile_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps cluster name between VM's OVF and the destination cluster this VM should be registered to, relevant when C(state) is registered. Cluster mapping is described by the following dictionary:,C(source_name): The name of the source cluster.,C(dest_name): The name of the destination cluster.
        attribute :cluster_mappings
        validates :cluster_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps role name between VM's OVF and the destination role this VM should be registered to, relevant when C(state) is registered. Role mapping is described by the following dictionary:,C(source_name): The name of the source role.,C(dest_name): The name of the destination role.
        attribute :role_mappings
        validates :role_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps aaa domain name between VM's OVF and the destination aaa domain this VM should be registered to, relevant when C(state) is registered. The aaa domain mapping is described by the following dictionary:,C(source_name): The name of the source aaa domain.,C(dest_name): The name of the destination aaa domain.
        attribute :domain_mappings
        validates :domain_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps affinty name between VM's OVF and the destination affinity this VM should be registered to, relevant when C(state) is registered.
        attribute :affinity_group_mappings
        validates :affinity_group_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mappper which maps affinity label name between VM's OVF and the destination label this VM should be registered to, relevant when C(state) is registered.
        attribute :affinity_label_mappings
        validates :affinity_label_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps lun between VM's OVF and the destination lun this VM should contain, relevant when C(state) is registered. lun_mappings is described by the following dictionary: - C(logical_unit_id): The logical unit number to identify a logical unit, - C(logical_unit_port): The port being used to connect with the LUN disk. - C(logical_unit_portal): The portal being used to connect with the LUN disk. - C(logical_unit_address): The address of the block storage host. - C(logical_unit_target): The iSCSI specification located on an iSCSI server - C(logical_unit_username): Username to be used to connect to the block storage host. - C(logical_unit_password): Password to be used to connect to the block storage host. - C(storage_type): The storage type which the LUN reside on (iscsi or fcp)
        attribute :lun_mappings
        validates :lun_mappings, type: TypeGeneric.new(Hash)

        # @return [String, nil] Boolean indication whether to reassign bad macs when C(state) is registered.
        attribute :reassign_bad_macs
        validates :reassign_bad_macs, type: String

        # @return [String, nil] Name of the template, which should be used to create Virtual Machine.,Required if creating VM.,If template is not specified and VM doesn't exist, VM will be created from I(Blank) template.
        attribute :template
        validates :template, type: String

        # @return [Object, nil] Version number of the template to be used for VM.,By default the latest available version of the template is used.
        attribute :template_version

        # @return [Boolean, nil] Specify if latest template version should be used, when running a stateless VM.,If this parameter is set to I(yes) stateless VM is created.
        attribute :use_latest_template_version
        validates :use_latest_template_version, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Name of the storage domain where all template disks should be created.,This parameter is considered only when C(template) is provided.,IMPORTANT - This parameter is not idempotent, if the VM exists and you specfiy different storage domain, disk won't move.
        attribute :storage_domain
        validates :storage_domain, type: String

        # @return [:cow, :raw, nil] Specify format of the disk.,If C(cow) format is used, disk will by created as sparse, so space will be allocated for the volume as needed, also known as I(thin provision).,If C(raw) format is used, disk storage will be allocated right away, also known as I(preallocated).,Note that this option isn't idempotent as it's not currently possible to change format of the disk via API.,This parameter is considered only when C(template) and C(storage domain) is provided.
        attribute :disk_format
        validates :disk_format, inclusion: {:in=>[:cow, :raw], :message=>"%{value} needs to be :cow, :raw"}, allow_nil: true

        # @return [String, nil] Amount of memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,Default value is set by engine.
        attribute :memory
        validates :memory, type: String

        # @return [Object, nil] Amount of minimal guaranteed memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,C(memory_guaranteed) parameter can't be lower than C(memory) parameter.,Default value is set by engine.
        attribute :memory_guaranteed

        # @return [Object, nil] Upper bound of virtual machine memory up to which memory hot-plug can be performed. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,Default value is set by engine.
        attribute :memory_max

        # @return [Integer, nil] Set a CPU shares for this Virtual Machine.,Default value is set by oVirt/RHV engine.
        attribute :cpu_shares
        validates :cpu_shares, type: Integer

        # @return [Integer, nil] Number of virtual CPUs cores of the Virtual Machine.,Default value is set by oVirt/RHV engine.
        attribute :cpu_cores
        validates :cpu_cores, type: Integer

        # @return [Integer, nil] Number of virtual CPUs sockets of the Virtual Machine.,Default value is set by oVirt/RHV engine.
        attribute :cpu_sockets
        validates :cpu_sockets, type: Integer

        # @return [Object, nil] Number of virtual CPUs sockets of the Virtual Machine.,Default value is set by oVirt/RHV engine.
        attribute :cpu_threads

        # @return [:desktop, :server, :high_performance, nil] Type of the Virtual Machine.,Default value is set by oVirt/RHV engine.,I(high_performance) is supported since Ansible 2.5 and oVirt/RHV 4.2.
        attribute :type
        validates :type, inclusion: {:in=>[:desktop, :server, :high_performance], :message=>"%{value} needs to be :desktop, :server, :high_performance"}, allow_nil: true

        # @return [String, nil] Virtual Machine quota ID to be used for disk. By default quota is chosen by oVirt/RHV engine.
        attribute :quota_id
        validates :quota_id, type: String

        # @return [String, nil] Operating system of the Virtual Machine.,Default value is set by oVirt/RHV engine.,Possible values: debian_7, freebsd, freebsdx64, other, other_linux, other_linux_ppc64, other_ppc64, rhel_3, rhel_4, rhel_4x64, rhel_5, rhel_5x64, rhel_6, rhel_6x64, rhel_6_ppc64, rhel_7x64, rhel_7_ppc64, sles_11, sles_11_ppc64, ubuntu_12_04, ubuntu_12_10, ubuntu_13_04, ubuntu_13_10, ubuntu_14_04, ubuntu_14_04_ppc64, windows_10, windows_10x64, windows_2003, windows_2003x64, windows_2008, windows_2008x64, windows_2008r2x64, windows_2008R2x64, windows_2012x64, windows_2012R2x64, windows_7, windows_7x64, windows_8, windows_8x64, windows_xp
        attribute :operating_system
        validates :operating_system, type: String

        # @return [:cdrom, :hd, :network, nil] List of boot devices which should be used to boot. For example C([ cdrom, hd ]).,Default value is set by oVirt/RHV engine.
        attribute :boot_devices
        validates :boot_devices, inclusion: {:in=>[:cdrom, :hd, :network], :message=>"%{value} needs to be :cdrom, :hd, :network"}, allow_nil: true

        # @return [Boolean, nil] I(True) enable menu to select boot device, I(False) to disable it. By default is chosen by oVirt/RHV engine.
        attribute :boot_menu
        validates :boot_menu, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] I(True) enable USB support, I(False) to disable it. By default is chosen by oVirt/RHV engine.
        attribute :usb_support
        validates :usb_support, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] I(True) enable VirtIO serial console, I(False) to disable it. By default is chosen by oVirt/RHV engine.
        attribute :serial_console
        validates :serial_console, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] I(True) enable Single Sign On by Guest Agent, I(False) to disable it. By default is chosen by oVirt/RHV engine.
        attribute :sso
        validates :sso, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specify host where Virtual Machine should be running. By default the host is chosen by engine scheduler.,This parameter is used only when C(state) is I(running) or I(present).
        attribute :host
        validates :host, type: String

        # @return [Boolean, nil] If I(yes) Virtual Machine will be set as highly available.,If I(no) Virtual Machine won't be set as highly available.,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :high_availability
        validates :high_availability, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Indicates the priority of the virtual machine inside the run and migration queues. Virtual machines with higher priorities will be started and migrated before virtual machines with lower priorities. The value is an integer between 0 and 100. The higher the value, the higher the priority.,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :high_availability_priority
        validates :high_availability_priority, type: Integer

        # @return [Object, nil] Name of the storage domain this virtual machine lease reside on.,NOTE - Supported since oVirt 4.1.
        attribute :lease

        # @return [Object, nil] Enables a virtual machine to be customized to its own compatibility version. If 'C(custom_compatibility_version)' is set, it overrides the cluster's compatibility version for this particular virtual machine.
        attribute :custom_compatibility_version

        # @return [Array<Hash>, Hash, nil] Single Root I/O Virtualization - technology that allows single device to expose multiple endpoints that can be passed to VMs,host_devices is an list which contain dictinary with name and state of device
        attribute :host_devices
        validates :host_devices, type: TypeGeneric.new(Hash)

        # @return [Object, nil] If I(yes) Virtual Machine will be set as delete protected.,If I(no) Virtual Machine won't be set as delete protected.,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :delete_protected

        # @return [Object, nil] If I(yes) Virtual Machine will be set as stateless.,If I(no) Virtual Machine will be unset as stateless.,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :stateless

        # @return [String, nil] If I(yes) then the disks of the created virtual machine will be cloned and independent of the template.,This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.
        attribute :clone
        validates :clone, type: String

        # @return [String, nil] If I(yes) then the permissions of the template (only the direct ones, not the inherited ones) will be copied to the created virtual machine.,This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.
        attribute :clone_permissions
        validates :clone_permissions, type: String

        # @return [String, nil] ISO file from ISO storage domain which should be attached to Virtual Machine.,If you pass empty string the CD will be ejected from VM.,If used with C(state) I(running) or I(present) and VM is running the CD will be attached to VM.,If used with C(state) I(running) or I(present) and VM is down the CD will be attached to VM persistently.
        attribute :cd_iso
        validates :cd_iso, type: String

        # @return [String, nil] Please check to I(Synopsis) to more detailed description of force parameter, it can behave differently in different situations.
        attribute :force
        validates :force, type: String

        # @return [Array<Hash>, Hash, nil] List of NICs, which should be attached to Virtual Machine. NIC is described by following dictionary.,C(name) - Name of the NIC.,C(profile_name) - Profile name where NIC should be attached.,C(interface) -  Type of the network interface. One of following I(virtio), I(e1000), I(rtl8139), default is I(virtio).,C(mac_address) - Custom MAC address of the network interface, by default it's obtained from MAC pool.,NOTE - This parameter is used only when C(state) is I(running) or I(present) and is able to only create NICs. To manage NICs of the VM in more depth please use M(ovirt_nics) module instead.
        attribute :nics
        validates :nics, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of disks, which should be attached to Virtual Machine. Disk is described by following dictionary.,C(name) - Name of the disk. Either C(name) or C(id) is required.,C(id) - ID of the disk. Either C(name) or C(id) is required.,C(interface) - Interface of the disk, either I(virtio) or I(IDE), default is I(virtio).,C(bootable) - I(True) if the disk should be bootable, default is non bootable.,C(activate) - I(True) if the disk should be activated, default is activated.,NOTE - This parameter is used only when C(state) is I(running) or I(present) and is able to only attach disks. To manage disks of the VM in more depth please use M(ovirt_disks) module instead.
        attribute :disks
        validates :disks, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] Dictionary with values for Windows Virtual Machine initialization using sysprep.,C(host_name) - Hostname to be set to Virtual Machine when deployed.,C(active_directory_ou) - Active Directory Organizational Unit, to be used for login of user.,C(org_name) - Organization name to be set to Windows Virtual Machine.,C(domain) - Domain to be set to Windows Virtual Machine.,C(timezone) - Timezone to be set to Windows Virtual Machine.,C(ui_language) - UI language of the Windows Virtual Machine.,C(system_locale) - System localization of the Windows Virtual Machine.,C(input_locale) - Input localization of the Windows Virtual Machine.,C(windows_license_key) - License key to be set to Windows Virtual Machine.,C(user_name) - Username to be used for set password to Windows Virtual Machine.,C(root_password) - Password to be set for username to Windows Virtual Machine.
        attribute :sysprep
        validates :sysprep, type: Hash

        # @return [Hash, nil] Dictionary with values for Unix-like Virtual Machine initialization using cloud init.,C(host_name) - Hostname to be set to Virtual Machine when deployed.,C(timezone) - Timezone to be set to Virtual Machine when deployed.,C(user_name) - Username to be used to set password to Virtual Machine when deployed.,C(root_password) - Password to be set for user specified by C(user_name) parameter.,C(authorized_ssh_keys) - Use this SSH keys to login to Virtual Machine.,C(regenerate_ssh_keys) - If I(True) SSH keys will be regenerated on Virtual Machine.,C(custom_script) - Cloud-init script which will be executed on Virtual Machine when deployed.  This is appended to the end of the cloud-init script generated by any other options.,C(dns_servers) - DNS servers to be configured on Virtual Machine.,C(dns_search) - DNS search domains to be configured on Virtual Machine.,C(nic_boot_protocol) - Set boot protocol of the network interface of Virtual Machine. Can be one of C(none), C(dhcp) or C(static).,C(nic_ip_address) - If boot protocol is static, set this IP address to network interface of Virtual Machine.,C(nic_netmask) - If boot protocol is static, set this netmask to network interface of Virtual Machine.,C(nic_gateway) - If boot protocol is static, set this gateway to network interface of Virtual Machine.,C(nic_name) - Set name to network interface of Virtual Machine.,C(nic_on_boot) - If I(True) network interface will be set to start on boot.
        attribute :cloud_init
        validates :cloud_init, type: Hash

        # @return [Array<Hash>, Hash, nil] List of dictionaries representing network interfaces to be setup by cloud init.,This option is used, when user needs to setup more network interfaces via cloud init.,If one network interface is enough, user should use C(cloud_init) I(nic_*) parameters. C(cloud_init) I(nic_*) parameters are merged with C(cloud_init_nics) parameters.,Dictionary can contain following values.,C(nic_boot_protocol) - Set boot protocol of the network interface of Virtual Machine. Can be one of C(none), C(dhcp) or C(static).,C(nic_ip_address) - If boot protocol is static, set this IP address to network interface of Virtual Machine.,C(nic_netmask) - If boot protocol is static, set this netmask to network interface of Virtual Machine.,C(nic_gateway) - If boot protocol is static, set this gateway to network interface of Virtual Machine.,C(nic_name) - Set name to network interface of Virtual Machine.,C(nic_on_boot) - If I(True) network interface will be set to start on boot.
        attribute :cloud_init_nics
        validates :cloud_init_nics, type: TypeGeneric.new(Hash)

        # @return [Object, nil] If I(true) the C(cloud_init) or C(sysprep) parameters will be saved for the virtual machine and won't be virtual machine won't be started as run-once.
        attribute :cloud_init_persist

        # @return [Object, nil] Path to a kernel image used to boot the virtual machine.,Kernel image must be stored on either the ISO domain or on the host's storage.
        attribute :kernel_path

        # @return [Object, nil] Path to an initial ramdisk to be used with the kernel specified by C(kernel_path) option.,Ramdisk image must be stored on either the ISO domain or on the host's storage.
        attribute :initrd_path

        # @return [Object, nil] Kernel command line parameters (formatted as string) to be used with the kernel specified by C(kernel_path) option.
        attribute :kernel_params

        # @return [Object, nil] Name of virtual machine's hardware configuration.,By default no instance type is used.
        attribute :instance_type

        # @return [Object, nil] Description of the Virtual Machine.
        attribute :description

        # @return [Object, nil] Comment of the Virtual Machine.
        attribute :comment

        # @return [Object, nil] Sets time zone offset of the guest hardware clock.,For example C(Etc/GMT)
        attribute :timezone

        # @return [:vm, :host, :custom, nil] Specify a serial number policy for the Virtual Machine.,Following options are supported.,C(vm) - Sets the Virtual Machine's UUID as its serial number.,C(host) - Sets the host's UUID as the Virtual Machine's serial number.,C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).
        attribute :serial_policy
        validates :serial_policy, inclusion: {:in=>[:vm, :host, :custom], :message=>"%{value} needs to be :vm, :host, :custom"}, allow_nil: true

        # @return [Object, nil] Allows you to specify a custom serial number.,This parameter is used only when C(serial_policy) is I(custom).
        attribute :serial_policy_value

        # @return [Hash, nil] Dictionary of values to be used to connect to VMware and import a virtual machine to oVirt.,Dictionary can contain following values.,C(username) - The username to authenticate against the VMware.,C(password) - The password to authenticate against the VMware.,C(url) - The URL to be passed to the I(virt-v2v) tool for conversion. For example I(vpx://wmware_user@vcenter-host/DataCenter/Cluster/esxi-host?no_verify=1),C(drivers_iso) - The name of the ISO containing drivers that can be used during the I(virt-v2v) conversion process.,C(sparse) - Specifies the disk allocation policy of the resulting virtual machine. I(true) for sparse, I(false) for preallocated. Default value is I(true).,C(storage_domain) - Specifies the target storage domain for converted disks. This is required parameter.
        attribute :vmware
        validates :vmware, type: Hash

        # @return [Object, nil] Dictionary of values to be used to connect to XEN and import a virtual machine to oVirt.,Dictionary can contain following values.,C(url) - The URL to be passed to the I(virt-v2v) tool for conversion. For example I(xen+ssh://root@zen.server). This is required parameter.,C(drivers_iso) - The name of the ISO containing drivers that can be used during the I(virt-v2v) conversion process.,C(sparse) - Specifies the disk allocation policy of the resulting virtual machine. I(true) for sparse, I(false) for preallocated. Default value is I(true).,C(storage_domain) - Specifies the target storage domain for converted disks. This is required parameter.
        attribute :xen

        # @return [Object, nil] Dictionary of values to be used to connect to kvm and import a virtual machine to oVirt.,Dictionary can contain following values.,C(name) - The name of the KVM virtual machine.,C(username) - The username to authenticate against the KVM.,C(password) - The password to authenticate against the KVM.,C(url) - The URL to be passed to the I(virt-v2v) tool for conversion. For example I(qemu:///system). This is required parameter.,C(drivers_iso) - The name of the ISO containing drivers that can be used during the I(virt-v2v) conversion process.,C(sparse) - Specifies the disk allocation policy of the resulting virtual machine. I(true) for sparse, I(false) for preallocated. Default value is I(true).,C(storage_domain) - Specifies the target storage domain for converted disks. This is required parameter.
        attribute :kvm

        # @return [Object, nil] CPU mode of the virtual machine. It can be some of the following: I(host_passthrough), I(host_model) or I(custom).,For I(host_passthrough) CPU type you need to set C(placement_policy) to I(pinned).,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :cpu_mode

        # @return [String, nil] The configuration of the virtual machine's placement policy.,Placement policy can be one of the following values:,C(migratable) - Allow manual and automatic migration.,C(pinned) - Do not allow migration.,C(user_migratable) - Allow manual migration only.,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :placement_policy
        validates :placement_policy, type: String

        # @return [Object, nil] If I(true), in addition return I(remote_vv_file) inside I(vm) dictionary, which contains compatible content for remote-viewer application. Works only C(state) is I(running).
        attribute :ticket

        # @return [Object, nil] CPU Pinning topology to map virtual machine CPU to host CPU.,CPU Pinning topology is a list of dictionary which can have following values:,C(cpu) - Number of the host CPU.,C(vcpu) - Number of the virtual machine CPU.
        attribute :cpu_pinning

        # @return [Object, nil] If I(true), the sound card is added to the virtual machine.
        attribute :soundcard_enabled

        # @return [Object, nil] If I(true), use smart card authentication.
        attribute :smartcard_enabled

        # @return [Object, nil] Number of IO threads used by virtual machine. I(0) means IO threading disabled.
        attribute :io_threads

        # @return [Object, nil] If I(true), use memory ballooning.,Memory balloon is a guest device, which may be used to re-distribute / reclaim the host memory based on VM needs in a dynamic way. In this way it's possible to create memory over commitment states.
        attribute :ballooning_enabled

        # @return [:interleave, :preferred, :strict, nil] Set how the memory allocation for NUMA nodes of this VM is applied (relevant if NUMA nodes are set for this VM).,It can be one of the following: I(interleave), I(preferred) or I(strict).,If no value is passed, default value is set by oVirt/RHV engine.
        attribute :numa_tune_mode
        validates :numa_tune_mode, inclusion: {:in=>[:interleave, :preferred, :strict], :message=>"%{value} needs to be :interleave, :preferred, :strict"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of vNUMA Nodes to set for this VM and pin them to assigned host's physical NUMA node.,Each vNUMA node is described by following dictionary:,C(index) -  The index of this NUMA node (mandatory).,C(memory) - Memory size of the NUMA node in MiB (mandatory).,C(cores) -  list of VM CPU cores indexes to be included in this NUMA node (mandatory).,C(numa_node_pins) - list of physical NUMA node indexes to pin this virtual NUMA node to.
        attribute :numa_nodes
        validates :numa_nodes, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Random number generator (RNG). You can choose of one the following devices I(urandom), I(random) or I(hwrng).,In order to select I(hwrng), you must have it enabled on cluster first.,/dev/urandom is used for cluster version >= 4.1, and /dev/random for cluster version <= 4.0
        attribute :rng_device

        # @return [Object, nil] Properties sent to VDSM to configure various hooks.,Custom properties is a list of dictionary which can have following values:,C(name) - Name of the custom property. For example: I(hugepages), I(vhost), I(sap_agent), etc.,C(regexp) - Regular expression to set for custom property.,C(value) - Value to set for custom property.
        attribute :custom_properties

        # @return [Object, nil] Assign watchdog device for the virtual machine.,Watchdogs is a dictionary which can have following values:,C(model) - Model of the watchdog device. For example: I(i6300esb), I(diag288) or I(null).,C(action) - Watchdog action to be performed when watchdog is triggered. For example: I(none), I(reset), I(poweroff), I(pause) or I(dump).
        attribute :watchdog

        # @return [Hash, nil] Assign graphical console to the virtual machine.,Graphical console is a dictionary which can have following values:,C(headless_mode) - If I(true) disable the graphics console for this virtual machine.,C(protocol) - Graphical protocol, a list of I(spice), I(vnc), or both.
        attribute :graphical_console
        validates :graphical_console, type: Hash
      end
    end
  end
end

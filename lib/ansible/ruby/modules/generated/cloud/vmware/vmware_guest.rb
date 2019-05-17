# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to create new virtual machines from templates or other virtual machines, manage power state of virtual machine such as power on, power off, suspend, shutdown, reboot, restart etc., modify various virtual machine components like network, disk, customization etc., rename a virtual machine and remove a virtual machine with associated components.

      class Vmware_guest < Base
        # @return [:present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest, nil] Specify state of the virtual machine be in.,If C(state) is set to C(present) and virtual machine exists, ensure the virtual machine configurations conforms to task arguments.,If C(state) is set to C(absent) and virtual machine exists, then the specified virtual machine is removed with its associated components.,If C(state) is set to one of the following C(poweredon), C(poweredoff), C(present), C(restarted), C(suspended) and virtual machine does not exists, then virtual machine is deployed with given parameters.,If C(state) is set to C(poweredon) and virtual machine exists with powerstate other than powered on, then the specified virtual machine is powered on.,If C(state) is set to C(poweredoff) and virtual machine exists with powerstate other than powered off, then the specified virtual machine is powered off.,If C(state) is set to C(restarted) and virtual machine exists, then the virtual machine is restarted.,If C(state) is set to C(suspended) and virtual machine exists, then the virtual machine is set to suspended mode.,If C(state) is set to C(shutdownguest) and virtual machine exists, then the virtual machine is shutdown.,If C(state) is set to C(rebootguest) and virtual machine exists, then the virtual machine is rebooted.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest], :message=>"%{value} needs to be :present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest"}, allow_nil: true

        # @return [String] Name of the virtual machine to work with.,Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).,If multiple virtual machines with same name exists, then C(folder) is required parameter to identify uniqueness of the virtual machine.,This parameter is required, if C(state) is set to C(poweredon), C(poweredoff), C(present), C(restarted), C(suspended) and virtual machine does not exists.,This parameter is case sensitive.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:first, :last, nil] If multiple virtual machines matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String, nil] UUID of the virtual machine to manage if known, this is VMware's unique identifier.,This is required if C(name) is not supplied.,If virtual machine does not exists, then this parameter is ignored.,Please note that a supplied UUID will be ignored on virtual machine creation, as VMware creates the UUID internally.
        attribute :uuid
        validates :uuid, type: String

        # @return [String, nil] Template or existing virtual machine used to create new virtual machine.,If this value is not set, virtual machine is created without using a template.,If the virtual machine already exists, this parameter will be ignored.,This parameter is case sensitive.
        attribute :template
        validates :template, type: String

        # @return [:yes, :no, nil] Flag the instance as a template.,This will mark the given virtual machine as template.
        attribute :is_template
        validates :is_template, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Destination folder, absolute path to find an existing guest or create the new guest.,The folder should include the datacenter. ESX's datacenter is ha-datacenter.,This parameter is case sensitive.,This parameter is required, while deploying new virtual machine. version_added 2.5.,If multiple machines are found with same name, this parameter is used to identify uniqueness of the virtual machine. version_added 2.5,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2
        attribute :folder
        validates :folder, type: String

        # @return [Hash, nil] Manage virtual machine's hardware attributes.,All parameters case sensitive.,Valid attributes are:, - C(hotadd_cpu) (boolean): Allow virtual CPUs to be added while the virtual machine is running., - C(hotremove_cpu) (boolean): Allow virtual CPUs to be removed while the virtual machine is running. version_added: 2.5, - C(hotadd_memory) (boolean): Allow memory to be added while the virtual machine is running., - C(memory_mb) (integer): Amount of memory in MB., - C(nested_virt) (bool): Enable nested virtualization. version_added: 2.5, - C(num_cpus) (integer): Number of CPUs., - C(num_cpu_cores_per_socket) (integer): Number of Cores Per Socket. Value should be multiple of C(num_cpus)., - C(scsi) (string): Valid values are C(buslogic), C(lsilogic), C(lsilogicsas) and C(paravirtual) (default)., - C(memory_reservation) (integer): Amount of memory in MB to set resource limits for memory. version_added: 2.5, - C(memory_reservation_lock) (boolean): If set true, memory resource reservation for the virtual machine will always be equal to the virtual machine's memory size. version_added: 2.5, - C(max_connections) (integer): Maximum number of active remote display connections for the virtual machines. version_added: 2.5., - C(mem_limit) (integer): The memory utilization of a virtual machine will not exceed this limit. Unit is MB. version_added: 2.5, - C(mem_reservation) (integer): The amount of memory resource that is guaranteed available to the virtual machine. Unit is MB. version_added: 2.5, - C(cpu_limit) (integer): The CPU utilization of a virtual machine will not exceed this limit. Unit is MHz. version_added: 2.5, - C(cpu_reservation) (integer): The amount of CPU resource that is guaranteed available to the virtual machine. Unit is MHz. version_added: 2.5, - C(version) (integer): The Virtual machine hardware versions. Default is 10 (ESXi 5.5 and onwards). Please check VMware documentation for correct virtual machine hardware version. Incorrect hardware version may lead to failure in deployment. If hardware version is already equal to the given version then no action is taken. version_added: 2.6, - C(boot_firmware) (string): Choose which firmware should be used to boot the virtual machine. Allowed values are "bios" and "efi". version_added: 2.7
        attribute :hardware
        validates :hardware, type: Hash

        # @return [String, nil] Set the guest ID.,This parameter is case sensitive.,Examples:,  virtual machine with RHEL7 64 bit, will be 'rhel7_64Guest',  virtual machine with CensOS 64 bit, will be 'centos64Guest',  virtual machine with Ubuntu 64 bit, will be 'ubuntu64Guest',This field is required when creating a virtual machine.,Valid values are referenced here: U(http://pubs.vmware.com/vsphere-6-5/topic/com.vmware.wssdk.apiref.doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html)\r\n
        attribute :guest_id
        validates :guest_id, type: String

        # @return [Array<Hash>, Hash, nil] A list of disks to add.,This parameter is case sensitive.,Resizing disks is not supported.,Removing existing disks of the virtual machine is not supported.,Valid attributes are:, - C(size_[tb,gb,mb,kb]) (integer): Disk storage size in specified unit., - C(type) (string): Valid values are:,     - C(thin) thin disk,     - C(eagerzeroedthick) eagerzeroedthick disk, added in version 2.5,     Default: C(None) thick disk, no eagerzero., - C(datastore) (string): Datastore to use for the disk. If C(autoselect_datastore) is enabled, filter datastore selection., - C(autoselect_datastore) (bool): select the less used datastore. Specify only if C(datastore) is not specified., - C(disk_mode) (string): Type of disk mode. Added in version 2.6,     - Available options are :,     - C(persistent): Changes are immediately and permanently written to the virtual disk. This is default.,     - C(independent_persistent): Same as persistent, but not affected by snapshots.,     - C(independent_nonpersistent): Changes to virtual disk are made to a redo log and discarded at power off, but not affected by snapshots.
        attribute :disk
        validates :disk, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] A CD-ROM configuration for the virtual machine.,Valid attributes are:, - C(type) (string): The type of CD-ROM, valid options are C(none), C(client) or C(iso). With C(none) the CD-ROM will be disconnected but present., - C(iso_path) (string): The datastore path to the ISO file to use, in the form of C([datastore1] path/to/file.iso). Required if type is set C(iso).
        attribute :cdrom
        validates :cdrom, type: Hash

        # @return [Object, nil] Use the given resource pool for virtual machine operation.,This parameter is case sensitive.,Resource pool should be child of the selected host parent.
        attribute :resource_pool

        # @return [:yes, :no, nil] Wait until vCenter detects an IP address for the virtual machine.,This requires vmware-tools (vmtoolsd) to properly work after creation.,vmware-tools needs to be installed on the given virtual machine in order to work with this parameter.
        attribute :wait_for_ip_address
        validates :wait_for_ip_address, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] If the C(state) is set to C(shutdownguest), by default the module will return immediately after sending the shutdown signal.,If this argument is set to a positive integer, the module will instead wait for the virtual machine to reach the poweredoff state.,The value sets a timeout in seconds for the module to wait for the state change.
        attribute :state_change_timeout
        validates :state_change_timeout, type: Integer

        # @return [Object, nil] Name of the existing snapshot to use to create a clone of a virtual machine.,This parameter is case sensitive.,While creating linked clone using C(linked_clone) parameter, this parameter is required.
        attribute :snapshot_src

        # @return [:yes, :no, nil] Whether to create a linked clone from the snapshot specified.,If specified, then C(snapshot_src) is required parameter.
        attribute :linked_clone
        validates :linked_clone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Ignore warnings and complete the actions.,This parameter is useful while removing virtual machine which is powered on state.,This module reflects the VMware vCenter API and UI workflow, as such, in some cases the `force` flag will be mandatory to perform the action to ensure you are certain the action has to be taken, no matter what the consequence. This is specifically the case for removing a powered on the virtual machine when C(state) is set to C(absent).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Destination datacenter for the deploy operation.,This parameter is case sensitive.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [String, nil] The cluster name where the virtual machine will run.,This is a required parameter, if C(esxi_hostname) is not set.,C(esxi_hostname) and C(cluster) are mutually exclusive parameters.,This parameter is case sensitive.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The ESXi hostname where the virtual machine will run.,This is a required parameter, if C(cluster) is not set.,C(esxi_hostname) and C(cluster) are mutually exclusive parameters.,This parameter is case sensitive.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [Object, nil] A note or annotation to include in the virtual machine.
        attribute :annotation

        # @return [Object, nil] Define a list of custom values to set on virtual machine.,A custom value object takes two fields C(key) and C(value).,Incorrect key and values will be ignored.
        attribute :customvalues

        # @return [Array<Hash>, Hash, nil] A list of networks (in the order of the NICs).,Removing NICs is not allowed, while reconfiguring the virtual machine.,All parameters and VMware object names are case sensetive.,One of the below parameters is required per entry:, - C(name) (string): Name of the portgroup or distributed virtual portgroup for this interface. When specifying distributed virtual portgroup make sure given C(esxi_hostname) or C(cluster) is associated with it., - C(vlan) (integer): VLAN number for this interface.,Optional parameters per entry (used for virtual hardware):, - C(device_type) (string): Virtual network device (one of C(e1000), C(e1000e), C(pcnet32), C(vmxnet2), C(vmxnet3) (default), C(sriov))., - C(mac) (string): Customize MAC address., - C(dvswitch_name) (string): Name of the distributed vSwitch. This value is required if multiple distributed portgroups exists with the same name. version_added 2.7,Optional parameters per entry (used for OS customization):, - C(type) (string): Type of IP assignment (either C(dhcp) or C(static)). C(dhcp) is default., - C(ip) (string): Static IP address (implies C(type: static))., - C(netmask) (string): Static netmask required for C(ip)., - C(gateway) (string): Static gateway., - C(dns_servers) (string): DNS servers for this network interface (Windows)., - C(domain) (string): Domain name for this network interface (Windows)., - C(wake_on_lan) (bool): Indicates if wake-on-LAN is enabled on this virtual network adapter. version_added: 2.5, - C(start_connected) (bool): Indicates that virtual network adapter starts with associated virtual machine powers on. version_added: 2.5, - C(allow_guest_control) (bool): Enables guest control over whether the connectable device is connected. version_added: 2.5
        attribute :networks
        validates :networks, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] Parameters for OS customization when cloning from the template or the virtual machine.,Not all operating systems are supported for customization with respective vCenter version, please check VMware documentation for respective OS customization.,For supported customization operating system matrix, (see U(http://partnerweb.vmware.com/programs/guestOS/guest-os-customization-matrix.pdf)),All parameters and VMware object names are case sensitive.,Linux based OSes requires Perl package to be installed for OS customizations.,Common parameters (Linux/Windows):, - C(dns_servers) (list): List of DNS servers to configure., - C(dns_suffix) (list): List of domain suffixes, also known as DNS search path (default: C(domain) parameter)., - C(domain) (string): DNS domain name to use., - C(hostname) (string): Computer hostname (default: shorted C(name) parameter). Allowed characters are alphanumeric (uppercase and lowercase) and minus, rest of the characters are dropped as per RFC 952.,Parameters related to Windows customization:, - C(autologon) (bool): Auto logon after virtual machine customization (default: False)., - C(autologoncount) (int): Number of autologon after reboot (default: 1)., - C(domainadmin) (string): User used to join in AD domain (mandatory with C(joindomain))., - C(domainadminpassword) (string): Password used to join in AD domain (mandatory with C(joindomain))., - C(fullname) (string): Server owner name (default: Administrator)., - C(joindomain) (string): AD domain to join (Not compatible with C(joinworkgroup))., - C(joinworkgroup) (string): Workgroup to join (Not compatible with C(joindomain), default: WORKGROUP)., - C(orgname) (string): Organisation name (default: ACME)., - C(password) (string): Local administrator password., - C(productid) (string): Product ID., - C(runonce) (list): List of commands to run at first user logon., - C(timezone) (int): Timezone (See U(https://msdn.microsoft.com/en-us/library/ms912391.aspx)).
        attribute :customization
        validates :customization, type: Hash

        # @return [Array<Hash>, Hash, nil] A list of vApp properties,For full list of attributes and types refer to: U(https://github.com/vmware/pyvmomi/blob/master/docs/vim/vApp/PropertyInfo.rst),Basic attributes are:, - C(id) (string): Property id - required., - C(value) (string): Property value., - C(type) (string): Value type, string type by default., - C(operation): C(remove): This attribute is required only when removing properties.
        attribute :vapp_properties
        validates :vapp_properties, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Unique name identifying the requested customization specification.,This parameter is case sensitive.,If set, then overrides C(customization) parameter values.
        attribute :customization_spec

        # @return [String, nil] Specify datastore or datastore cluster to provision virtual machine.,This will take precendence over "disk.datastore" parameter.,This parameter is useful to override datastore or datastore cluster setting.,For example, when user has different datastore or datastore cluster for templates and virtual machines.,Please see example for more usage.
        attribute :datastore
        validates :datastore, type: String
      end
    end
  end
end

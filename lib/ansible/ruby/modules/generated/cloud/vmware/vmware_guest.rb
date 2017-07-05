# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create new virtual machines (from templates or not)
      # Power on/power off/restart a virtual machine
      # Modify, rename or remove a virtual machine
      class Vmware_guest < Base
        # @return [:present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest] What state should the virtual machine be in?,If C(state) is set to C(present) and VM exists, ensure the VM configuration conforms to task arguments
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest], :message=>"%{value} needs to be :present, :absent, :poweredon, :poweredoff, :restarted, :suspended, :shutdownguest, :rebootguest"}

        # @return [String] Name of the VM to work with
        attribute :name
        validates :name, presence: true, type: String

        # @return [:first, :last, nil] If multiple VMs matching the name, use the first or last found
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required if name is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [String, nil] Template used to create VM.,If this value is not set, VM is created without using a template.,If the VM exists already this setting will be ignored.
        attribute :template
        validates :template, type: String

        # @return [Boolean, nil] Flag the instance as a template
        attribute :is_template
        validates :is_template, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Destination folder, absolute path to find an existing guest or create the new guest
        attribute :folder
        validates :folder, type: String

        # @return [Hash, nil] Manage some VM hardware attributes.,Valid attributes are: memory_mb, num_cpus and scsi,scsi: Valid values are buslogic, lsilogic, lsilogicsas and paravirtual (default)
        attribute :hardware
        validates :hardware, type: Hash

        # @return [String, nil] Set the guest ID (Debian, RHEL, Windows...),This field is required when creating a VM,Valid values are referenced here: https://www.vmware.com/support/developer/converter-sdk/conv55_apireference/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html
        attribute :guest_id
        validates :guest_id, type: String

        # @return [Array<Hash>, Hash, nil] A list of disks to add,Valid attributes are: size_[tb,gb,mb,kb], type, datastore and autoselect_datastore,type: Valid value is thin (default: None),datastore: Datastore to use for the disk. If autoselect_datastore is True, filter datastore selection.,autoselect_datastore (bool): select the less used datastore.
        attribute :disk
        validates :disk, type: TypeGeneric.new(Hash)

        # @return [String, nil] Affect machine to the given resource pool,Resource pool should be child of the selected host parent
        attribute :resource_pool
        validates :resource_pool, type: String

        # @return [Boolean, nil] Wait until vCenter detects an IP address for the VM,This requires vmware-tools (vmtoolsd) to properly work after creation
        attribute :wait_for_ip_address
        validates :wait_for_ip_address, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Ignore warnings and complete the actions
        attribute :force

        # @return [String, nil] Destination datacenter for the deploy operation
        attribute :datacenter
        validates :datacenter, type: String

        # @return [String, nil] The cluster name where the VM will run.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The esxi hostname where the VM will run.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [Object, nil] A note or annotation to include in the VM
        attribute :annotation

        # @return [Object, nil] Define a list of customvalues to set on VM.,A customvalue object takes 2 fields 'key' and 'value'.
        attribute :customvalues

        # @return [Array<Hash>, Hash, nil] Network to use should include C(name) or C(vlan) entry,Add an optional C(ip) and C(netmask) for network configuration,Add an optional C(gateway) entry to configure a gateway,Add an optional C(mac) entry to customize mac address,Add an optional C(dns_servers) or C(domain) entry per interface (Windows),Add an optional C(device_type) to configure the virtual NIC (pcnet32, vmxnet2, vmxnet3, e1000, e1000e)
        attribute :networks
        validates :networks, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] Parameters to customize template,Common parameters (Linux/Windows):,  dns_servers (list): List of DNS servers to configure,  dns_suffix (list): List of domain suffixes, aka DNS search path (default: C(domain) parameter),  domain (string): DNS domain name to use,  hostname (string): Computer hostname (default: C(name) parameter),Parameters related to windows customization:,  autologon (bool): Auto logon after VM customization (default: False),  autologoncount (int): Number of autologon after reboot (default: 1),  domainadmin (string): User used to join in AD domain (mandatory with joindomain),  domainadminpassword (string): Password used to join in AD domain (mandatory with joindomain),  fullname (string): Server owner name (default: Administrator),  joindomain (string): AD domain to join (Not compatible with C(joinworkgroup)),  joinworkgroup (string): Workgroup to join (Not compatible with C(joindomain), default: WORKGROUP),  orgname (string): Organisation name (default: ACME),  password (string): Local administrator password (mandatory),  productid (string): Product ID,  runonce (list): List of commands to run at first user logon,  timezone (int): Timezone (default: 85) See https://msdn.microsoft.com/en-us/library/ms912391(v=winembedded.11).aspx
        attribute :customization
        validates :customization, type: Hash
      end
    end
  end
end

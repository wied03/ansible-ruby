# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_virtualmachine < Base
        # @return [String, NilClass] Name of the resource group containing the virtual machine.
        attribute :resource_group
        validates :resource_group, presence: true, type: MultipleTypes.new(String, NilClass)

        # @return [String] Name of the virtual machine.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the virtual machine.,State 'present' will check that the machine exists with the requested configuration. If the configuration of the existing machine does not match, the machine will be updated. Use options started, allocated and restarted to change the machine's power state.,State 'absent' will remove the virtual machine.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] Use with state 'present' to start the machine. Set to false to have the machine be 'stopped'.
        attribute :started
        validates :started, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Toggle that controls if the machine is allocated/deallocated, only useful with state='present'.
        attribute :allocated
        validates :allocated, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use with state 'present' to restart a running VM.
        attribute :restarted
        validates :restarted, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Valid Azure location. Defaults to location of the resource group.
        attribute :location

        # @return [Object, nil] Name assigned internally to the host. On a linux VM this is the name returned by the `hostname` command. When creating a virtual machine, short_hostname defaults to name.
        attribute :short_hostname

        # @return [String, nil] A valid Azure VM size value. For example, 'Standard_D4'. The list of choices varies depending on the subscription and location. Check your subscription for available choices.
        attribute :vm_size
        validates :vm_size, type: String

        # @return [String, nil] Admin username used to access the host after it is created. Required when creating a VM.
        attribute :admin_username
        validates :admin_username, type: String

        # @return [String, nil] Password for the admin username. Not required if the os_type is Linux and SSH password authentication is disabled by setting ssh_password_enabled to false.
        attribute :admin_password
        validates :admin_password, type: String

        # @return [Boolean, nil] When the os_type is Linux, setting ssh_password_enabled to false will disable SSH password authentication and require use of SSH keys.
        attribute :ssh_password_enabled
        validates :ssh_password_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] For os_type Linux provide a list of SSH keys. Each item in the list should be a dictionary where the dictionary contains two keys: path and key_data. Set the path to the default location of the authorized_keys files. On an Enterprise Linux host, for example, the path will be /home/<admin username>/.ssh/authorized_keys. Set key_data to the actual value of the public key.
        attribute :ssh_public_keys
        validates :ssh_public_keys, type: Hash

        # @return [Hash] A dictionary describing the Marketplace image used to build the VM. Will contain keys: publisher, offer, sku and version. NOTE: set image.version to 'latest' to get the most recent version of a given image.
        attribute :image
        validates :image, presence: true, type: Hash

        # @return [Object, nil] Name of an existing storage account that supports creation of VHD blobs. If not specified for a new VM, a new storage account named <vm name>01 will be created using storage type 'Standard_LRS'.
        attribute :storage_account_name

        # @return [String, nil] Name of the container to use within the storage account to store VHD blobs. If no name is specified a default container will created.
        attribute :storage_container_name
        validates :storage_container_name, type: String

        # @return [Object, nil] Name fo the storage blob used to hold the VM's OS disk image. If no name is provided, defaults to the VM name + '.vhd'. If you provide a name, it must end with '.vhd'
        attribute :storage_blob_name

        # @return [:ReadOnly, :ReadWrite, nil] Type of OS disk caching.
        attribute :os_disk_caching
        validates :os_disk_caching, inclusion: {:in=>[:ReadOnly, :ReadWrite], :message=>"%{value} needs to be :ReadOnly, :ReadWrite"}, allow_nil: true

        # @return [:Windows, :Linux, nil] Base type of operating system.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [:Dynamic, :Static, nil] If a public IP address is created when creating the VM (beacuse a Network Interface was not provided), determines if the public IP address remains permanently associated with the Network Interface. If set to 'Dynamic' the public IP address may change any time the VM is rebooted or power cycled.
        attribute :public_ip_allocation_method
        validates :public_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [Object, nil] If a network interface is created when creating the VM, a security group will be created as well. For Linux hosts a rule will be added to the security group allowing inbound TCP connections to the default SSH port 22, and for Windows hosts ports 3389 and 5986 will be opened. Override the default open ports by providing a list of ports.
        attribute :open_ports

        # @return [Object, nil] List of existing network interface names to add to the VM. If a network interface name is not provided when the VM is created, a default network interface will be created. In order for the module to create a network interface, at least one Virtual Network with one Subnet must exist.
        attribute :network_interface_names

        # @return [Object, nil] When creating a virtual machine, if a network interface name is not provided, one will be created. The new network interface will be assigned to the first virtual network found in the resource group. Use this parameter to provide a specific virtual network instead.
        attribute :virtual_network_name

        # @return [Object, nil] When creating a virtual machine, if a network interface name is not provided, one will be created. The new network interface will be assigned to the first subnet found in the virtual network. Use this parameter to provide a specific subnet instead.
        attribute :subnet_name

        # @return [String, nil] When removing a VM using state 'absent', also remove associated resources,It can be 'all' or a list with any of the following: ['network_interfaces', 'virtual_storage', 'public_ips'],Any other input will be ignored
        attribute :remove_on_absent
        validates :remove_on_absent, type: String
      end
    end
  end
end

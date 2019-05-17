# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, stop and start a virtual machine. Provide an existing storage account and network interface or allow the module to create these for you. If you choose not to provide a network interface, the resource group must contain a virtual network with at least one subnet.
      # Before Ansible 2.5, this required an image found in the Azure Marketplace which can be discovered with M(azure_rm_virtualmachineimage_facts). In Ansible 2.5 and newer, custom images can be used as well, see the examples for more details.
      class Azure_rm_virtualmachine < Base
        # @return [String, NilClass] Name of the resource group containing the virtual machine.
        attribute :resource_group
        validates :resource_group, presence: true, type: MultipleTypes.new(String, NilClass)

        # @return [String] Name of the virtual machine.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Data which is made available to the virtual machine and used by e.g., cloud-init.
        attribute :custom_data

        # @return [:absent, :present, nil] Assert the state of the virtual machine.,State 'present' will check that the machine exists with the requested configuration. If the configuration of the existing machine does not match, the machine will be updated. Use options started, allocated and restarted to change the machine's power state.,State 'absent' will remove the virtual machine.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] Use with state 'present' to start the machine. Set to false to have the machine be 'stopped'.
        attribute :started
        validates :started, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Toggle that controls if the machine is allocated/deallocated, only useful with state='present'.
        attribute :allocated
        validates :allocated, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Use with state 'present' to restart a running VM.
        attribute :restarted
        validates :restarted, type: Symbol

        # @return [Object, nil] Valid Azure location. Defaults to location of the resource group.
        attribute :location

        # @return [Object, nil] Name assigned internally to the host. On a linux VM this is the name returned by the `hostname` command. When creating a virtual machine, short_hostname defaults to name.
        attribute :short_hostname

        # @return [String, nil] A valid Azure VM size value. For example, 'Standard_D4'. The list of choices varies depending on the subscription and location. Check your subscription for available choices. Required when creating a VM.
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

        # @return [Array<Hash>, Hash, nil] For os_type Linux provide a list of SSH keys. Each item in the list should be a dictionary where the dictionary contains two keys: path and key_data. Set the path to the default location of the authorized_keys files. On an Enterprise Linux host, for example, the path will be /home/<admin username>/.ssh/authorized_keys. Set key_data to the actual value of the public key.
        attribute :ssh_public_keys
        validates :ssh_public_keys, type: TypeGeneric.new(Hash)

        # @return [Hash, String] Specifies the image used to build the VM.,If a string, the image is sourced from a custom image based on the name.,If a dict with the keys C(publisher), C(offer), C(sku), and C(version), the image is sourced from a Marketplace image. NOTE: set image.version to C(latest) to get the most recent version of a given image.,If a dict with the keys C(name) and C(resource_group), the image is sourced from a custom image based on the C(name) and C(resource_group) set. NOTE: the key C(resource_group) is optional and if omitted, all images in the subscription will be searched for by C(name).,Custom image support was added in Ansible 2.5
        attribute :image
        validates :image, presence: true, type: MultipleTypes.new(Hash, String)

        # @return [String, nil] Name or ID of an existing availability set to add the VM to. The availability_set should be in the same resource group as VM.
        attribute :availability_set
        validates :availability_set, type: String

        # @return [Object, nil] Name of an existing storage account that supports creation of VHD blobs. If not specified for a new VM, a new storage account named <vm name>01 will be created using storage type 'Standard_LRS'.
        attribute :storage_account_name

        # @return [String, nil] Name of the container to use within the storage account to store VHD blobs. If no name is specified a default container will created.
        attribute :storage_container_name
        validates :storage_container_name, type: String

        # @return [Object, nil] Name fo the storage blob used to hold the VM's OS disk image. If no name is provided, defaults to the VM name + '.vhd'. If you provide a name, it must end with '.vhd'
        attribute :storage_blob_name

        # @return [:Standard_LRS, :Premium_LRS, nil] Managed OS disk type
        attribute :managed_disk_type
        validates :managed_disk_type, inclusion: {:in=>[:Standard_LRS, :Premium_LRS], :message=>"%{value} needs to be :Standard_LRS, :Premium_LRS"}, allow_nil: true

        # @return [:ReadOnly, :ReadWrite, nil] Type of OS disk caching.
        attribute :os_disk_caching
        validates :os_disk_caching, inclusion: {:in=>[:ReadOnly, :ReadWrite], :message=>"%{value} needs to be :ReadOnly, :ReadWrite"}, allow_nil: true

        # @return [Integer, nil] Type of OS disk size in GB.
        attribute :os_disk_size_gb
        validates :os_disk_size_gb, type: Integer

        # @return [:Windows, :Linux, nil] Base type of operating system.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] Describes list of data disks.
        attribute :data_disks
        validates :data_disks, type: TypeGeneric.new(Hash)

        # @return [:Dynamic, :Static, :Disabled, nil] If a public IP address is created when creating the VM (because a Network Interface was not provided), determines if the public IP address remains permanently associated with the Network Interface. If set to 'Dynamic' the public IP address may change any time the VM is rebooted or power cycled.,The C(Disabled) choice was added in Ansible 2.6.
        attribute :public_ip_allocation_method
        validates :public_ip_allocation_method, inclusion: {:in=>[:Dynamic, :Static, :Disabled], :message=>"%{value} needs to be :Dynamic, :Static, :Disabled"}, allow_nil: true

        # @return [Object, nil] If a network interface is created when creating the VM, a security group will be created as well. For Linux hosts a rule will be added to the security group allowing inbound TCP connections to the default SSH port 22, and for Windows hosts ports 3389 and 5986 will be opened. Override the default open ports by providing a list of ports.
        attribute :open_ports

        # @return [Object, nil] List of existing network interface names to add to the VM.,Item can be a str of name or resource id of the network interface.,Item can also be a dict contains C(resource_group) and C(name) of the network interface.,If a network interface name is not provided when the VM is created, a default network interface will be created.,In order for the module to create a new network interface, at least one Virtual Network with one Subnet must exist.
        attribute :network_interface_names

        # @return [Object, nil] When creating a virtual machine, if a specific virtual network from another resource group should be used, use this parameter to specify the resource group to use.
        attribute :virtual_network_resource_group

        # @return [Object, nil] When creating a virtual machine, if a network interface name is not provided, one will be created.,The network interface will be assigned to the first virtual network found in the resource group.,Use this parameter to provide a specific virtual network instead.,If the virtual network in in another resource group, specific resource group by C(virtual_network_resource_group).
        attribute :virtual_network_name

        # @return [Object, nil] When creating a virtual machine, if a network interface name is not provided, one will be created.,The new network interface will be assigned to the first subnet found in the virtual network.,Use this parameter to provide a specific subnet instead.,If the subnet is in another resource group, specific resource group by C(virtual_network_resource_group).
        attribute :subnet_name

        # @return [String, nil] When removing a VM using state 'absent', also remove associated resources,It can be 'all' or a list with any of the following: ['network_interfaces', 'virtual_storage', 'public_ips'],Any other input will be ignored
        attribute :remove_on_absent
        validates :remove_on_absent, type: String

        # @return [Hash, nil] A dictionary describing a third-party billing plan for an instance
        attribute :plan
        validates :plan, type: Hash

        # @return [Symbol, nil] Accept terms for marketplace images that require it,Only Azure service admin/account admin users can purchase images from the marketplace
        attribute :accept_terms
        validates :accept_terms, type: Symbol
      end
    end
  end
end

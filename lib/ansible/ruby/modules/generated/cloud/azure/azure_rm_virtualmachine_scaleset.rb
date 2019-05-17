# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and update a virtual machine scale set.
      class Azure_rm_virtualmachine_scaleset < Base
        # @return [String] Name of the resource group containing the virtual machine scale set.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the virtual machine.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the virtual machine scale set.,State 'present' will check that the machine exists with the requested configuration. If the configuration of the existing machine does not match, the machine will be updated. state.,State 'absent' will remove the virtual machine scale set.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Valid Azure location. Defaults to location of the resource group.
        attribute :location

        # @return [Object, nil] Short host name
        attribute :short_hostname

        # @return [String] A valid Azure VM size value. For example, 'Standard_D4'. The list of choices varies depending on the subscription and location. Check your subscription for available choices.
        attribute :vm_size
        validates :vm_size, presence: true, type: String

        # @return [Integer] Capacity of VMSS.
        attribute :capacity
        validates :capacity, presence: true, type: Integer

        # @return [:Basic, :Standard, nil] SKU Tier.
        attribute :tier
        validates :tier, inclusion: {:in=>[:Basic, :Standard], :message=>"%{value} needs to be :Basic, :Standard"}, allow_nil: true

        # @return [:Manual, :Automatic, nil] Upgrade policy.
        attribute :upgrade_policy
        validates :upgrade_policy, inclusion: {:in=>[:Manual, :Automatic], :message=>"%{value} needs to be :Manual, :Automatic"}, allow_nil: true

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

        # @return [:ReadOnly, :ReadWrite, nil] Type of OS disk caching.
        attribute :os_disk_caching
        validates :os_disk_caching, inclusion: {:in=>[:ReadOnly, :ReadWrite], :message=>"%{value} needs to be :ReadOnly, :ReadWrite"}, allow_nil: true

        # @return [:Windows, :Linux, nil] Base type of operating system.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [:Standard_LRS, :Premium_LRS, nil] Managed disk type.
        attribute :managed_disk_type
        validates :managed_disk_type, inclusion: {:in=>[:Standard_LRS, :Premium_LRS], :message=>"%{value} needs to be :Standard_LRS, :Premium_LRS"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] Describes list of data disks.
        attribute :data_disks
        validates :data_disks, type: TypeGeneric.new(Hash)

        # @return [Object, nil] When creating a virtual machine, if a specific virtual network from another resource group should be used, use this parameter to specify the resource group to use.
        attribute :virtual_network_resource_group

        # @return [String, nil] Virtual Network name.
        attribute :virtual_network_name
        validates :virtual_network_name, type: String

        # @return [String, nil] Subnet name.
        attribute :subnet_name
        validates :subnet_name, type: String

        # @return [Object, nil] Load balancer name.
        attribute :load_balancer

        # @return [String, nil] When removing a VM using state 'absent', also remove associated resources.,It can be 'all' or a list with any of the following: ['network_interfaces', 'virtual_storage', 'public_ips'].,Any other input will be ignored.
        attribute :remove_on_absent
        validates :remove_on_absent, type: String

        # @return [Symbol, nil] Indicates whether user wants to allow accelerated networking for virtual machines in scaleset being created.
        attribute :enable_accelerated_networking
        validates :enable_accelerated_networking, type: Symbol

        # @return [Object, nil] Existing security group with which to associate the subnet.,It can be the security group name which is in the same resource group.,It can be the resource Id.,It can be a dict which contains C(name) and C(resource_group) of the security group.
        attribute :security_group
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vca_vapp < Base
        # @return [Object] The name of the vCloud Air vApp instance
        attribute :vapp_name
        validates :vapp_name, presence: true

        # @return [String] The name of the vApp template to use to create the vApp instance.  If the I(state) is not `absent` then the I(template_name) value must be provided.  The I(template_name) must be previously uploaded to the catalog specified by I(catalog_name)
        attribute :template_name
        validates :template_name, type: String

        # @return [String] The name of the network that should be attached to the virtual machine in the vApp.  The virtual network specified must already be created in the vCloud Air VDC.  If the I(state) is not 'absent' then the I(network_name) argument must be provided.
        attribute :network_name
        validates :network_name, type: String

        # @return [String] Configures the mode of the network connection.
        attribute :network_mode
        validates :network_mode, inclusion: {:in=>[:pool, :dhcp, :static], :message=>"%{value} needs to be :pool, :dhcp, :static"}, allow_nil: true

        # @return [String] The name of the virtual machine instance in the vApp to manage.
        attribute :vm_name
        validates :vm_name, type: String

        # @return [String] The number of vCPUs to configure for the VM in the vApp.   If the I(vm_name) argument is provided, then this becomes a per VM setting otherwise it is applied to all VMs in the vApp.
        attribute :vm_cpus
        validates :vm_cpus, type: String

        # @return [String] The amount of memory in MB to allocate to VMs in the vApp.  If the I(vm_name) argument is provided, then this becomes a per VM setting otherise it is applied to all VMs in the vApp.
        attribute :vm_memory
        validates :vm_memory, type: String

        # @return [String] Specifies an operation to be performed on the vApp.
        attribute :operation
        validates :operation, inclusion: {:in=>[:noop, :poweron, :poweroff, :suspend, :shutdown, :reboot, :reset], :message=>"%{value} needs to be :noop, :poweron, :poweroff, :suspend, :shutdown, :reboot, :reset"}, allow_nil: true

        # @return [String] Configures the state of the vApp.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :deployed, :undeployed], :message=>"%{value} needs to be :present, :absent, :deployed, :undeployed"}, allow_nil: true

        # @return [String] The vCloud Air username to use during authentication
        attribute :username
        validates :username, type: String

        # @return [String] The vCloud Air password to use during authentication
        attribute :password
        validates :password, type: String

        # @return [String] The org to login to for creating vapp, mostly set when the service_type is vdc.
        attribute :org
        validates :org, type: String

        # @return [String] The instance id in a vchs environment to be used for creating the vapp
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String] The authentication host to be used when service type  is vcd.
        attribute :host
        validates :host, type: String

        # @return [String] The api version to be used with the vca
        attribute :api_version
        validates :api_version, type: String

        # @return [String] The type of service we are authenticating against
        attribute :service_type
        validates :service_type, inclusion: {:in=>[:vca, :vchs, :vcd], :message=>"%{value} needs to be :vca, :vchs, :vcd"}, allow_nil: true

        # @return [String] The name of the virtual data center (VDC) where the vm should be created or contains the vAPP.
        attribute :vdc_name
        validates :vdc_name, type: String
      end
    end
  end
end

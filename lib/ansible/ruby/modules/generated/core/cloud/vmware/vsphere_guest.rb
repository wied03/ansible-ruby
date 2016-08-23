# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vsphere_guest < Base
        # @return [String] The hostname of the vcenter server the module will connect to, to create the guest.
        attribute :vcenter_hostname
        validates :vcenter_hostname, presence: true, type: String

        # @return [TrueClass] Validate SSL certs.  Note, if running on python without SSLContext support (typically, python < 2.7.9) you will have to set this to C(no) as pysphere does not support validating certificates on older python. Prior to 2.1, this module would always validate on python >= 2.7.9 and never validate on python <= 2.7.8.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The virtual server name you wish to manage.
        attribute :guest
        validates :guest, presence: true, type: String

        # @return [String] Username to connect to vcenter as.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] Password of the user to connect to vcenter as.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The name of the resource_pool to create the VM in.
        attribute :resource_pool
        validates :resource_pool, type: String

        # @return [String] The name of the cluster to create the VM in. By default this is derived from the host you tell the module to build the guest on.
        attribute :cluster
        validates :cluster, type: String

        # @return [Hash] Dictionary which includes datacenter and hostname on which the VM should be created. For standalone ESXi hosts, ha-datacenter should be used as the datacenter name
        attribute :esxi
        validates :esxi, type: Hash

        # @return [String] Indicate desired state of the vm. 'reconfigured' only applies changes to 'vm_cdrom', 'memory_mb', and 'num_cpus' in vm_hardware parameter. The 'memory_mb' and 'num_cpus' changes are applied to powered-on vms when hot-plugging is enabled for the guest.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :powered_off, :absent, :powered_on, :restarted, :reconfigured], :message=>"%{value} needs to be :present, :powered_off, :absent, :powered_on, :restarted, :reconfigured"}, allow_nil: true

        # @return [Object] Specifies if the VM should be deployed from a template (mutually exclusive with 'state' parameter). No guest customization changes to hardware such as CPU, RAM, NICs or Disks can be applied when launching from template.
        attribute :from_template
        validates :from_template, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Name of the source template to deploy from
        attribute :template_src
        validates :template_src, type: String

        # @return [String] A string that when specified, will create a linked clone copy of the VM. Snapshot must already be taken in vCenter.
        attribute :snapshot_to_clone
        validates :snapshot_to_clone, type: String

        # @return [TrueClass] Specifies if the VM should be powered on after the clone.
        attribute :power_on_after_clone
        validates :power_on_after_clone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash] A key, value list of disks and their sizes and which datastore to keep it in.
        attribute :vm_disk
        validates :vm_disk, type: Hash

        # @return [Hash] A key, value list of VM config settings. Must include ['memory_mb', 'num_cpus', 'osid', 'scsi'].
        attribute :vm_hardware
        validates :vm_hardware, type: Hash

        # @return [Hash] A key, value list of nics, their types and what network to put them on.
        attribute :vm_nic
        validates :vm_nic, type: Hash

        # @return [Hash] A key, value pair of any extra values you want set or changed in the vmx file of the VM. Useful to set advanced options on the VM.
        attribute :vm_extra_config
        validates :vm_extra_config, type: Hash

        # @return [Object] Desired hardware version identifier (for example, "vmx-08" for vms that needs to be managed with vSphere Client). Note that changing hardware version of existing vm is not supported.
        attribute :vm_hw_version

        # @return [Object] Gather facts from vCenter on a particular VM
        attribute :vmware_guest_facts

        # @return [String] Boolean. Allows you to run commands which may alter the running state of a guest. Also used to reconfigure and destroy.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

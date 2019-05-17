# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage hosts in oVirt/RHV
      class Ovirt_host < Base
        # @return [String] Name of the host to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :maintenance, :upgraded, :started, :restarted, :stopped, :reinstalled, :iscsidiscover, :iscsilogin, nil] State which should a host to be in after successful completion.,I(iscsilogin) and I(iscsidiscover) are supported since version 2.4.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :maintenance, :upgraded, :started, :restarted, :stopped, :reinstalled, :iscsidiscover, :iscsilogin], :message=>"%{value} needs to be :present, :absent, :maintenance, :upgraded, :started, :restarted, :stopped, :reinstalled, :iscsidiscover, :iscsilogin"}, allow_nil: true

        # @return [Object, nil] Description of the host.
        attribute :comment

        # @return [Integer, nil] The amount of time in seconds the module should wait for the host to get into desired state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] Name of the cluster, where host should be created.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] Host address. It can be either FQDN (preferred) or IP address.
        attribute :address
        validates :address, type: String

        # @return [String, nil] Password of the root. It's required in case C(public_key) is set to I(False).
        attribute :password
        validates :password, type: String

        # @return [Symbol, nil] I(True) if the public key should be used to authenticate to host.,It's required in case C(password) is not set.
        attribute :public_key
        validates :public_key, type: Symbol

        # @return [:enabled, :disabled, nil] Specify if host will have enabled Kdump integration.
        attribute :kdump_integration
        validates :kdump_integration, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] SPM priority of the host. Integer value from 1 to 10, where higher number means higher priority.
        attribute :spm_priority

        # @return [Symbol, nil] If True host iptables will be overridden by host deploy script.,Note that C(override_iptables) is I(false) by default in oVirt/RHV.
        attribute :override_iptables
        validates :override_iptables, type: Symbol

        # @return [Symbol, nil] If True host will be forcibly moved to desired state.
        attribute :force
        validates :force, type: Symbol

        # @return [Symbol, nil] Override the display address of all VMs on this host with specified address.
        attribute :override_display
        validates :override_display, type: Symbol

        # @return [Array<String>, String, nil] List of kernel boot parameters.,Following are most common kernel parameters used for host:,Hostdev Passthrough & SR-IOV: intel_iommu=on,Nested Virtualization: kvm-intel.nested=1,Unsafe Interrupts: vfio_iommu_type1.allow_unsafe_interrupts=1,PCI Reallocation: pci=realloc,C(Note:),Modifying kernel boot parameters settings can lead to a host boot failure. Please consult the product documentation before doing any changes.,Kernel boot parameters changes require host deploy and restart. The host needs to be I(reinstalled) successfully and then to be I(rebooted) for kernel boot parameters to be applied.
        attribute :kernel_params
        validates :kernel_params, type: TypeGeneric.new(String)

        # @return [:deploy, :undeploy, nil] If I(deploy) it means this host should deploy also hosted engine components.,If I(undeploy) it means this host should un-deploy hosted engine components and this host will not function as part of the High Availability cluster.
        attribute :hosted_engine
        validates :hosted_engine, inclusion: {:in=>[:deploy, :undeploy], :message=>"%{value} needs to be :deploy, :undeploy"}, allow_nil: true

        # @return [Symbol, nil] Enable or disable power management of the host.,For more comprehensive setup of PM use C(ovirt_host_pm) module.
        attribute :power_management_enabled
        validates :power_management_enabled, type: Symbol

        # @return [Boolean, nil] If C(state) is I(present) activate the host.,This parameter is good to disable, when you don't want to change the state of host when using I(present) C(state).
        attribute :activate
        validates :activate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] If C(state) is I(iscsidiscover) it means that the iscsi attribute is being used to discover targets,If C(state) is I(iscsilogin) it means that the iscsi attribute is being used to login to the specified targets passed as part of the iscsi attribute
        attribute :iscsi
        validates :iscsi, type: Hash

        # @return [Boolean, nil] If I(true) and C(state) is I(upgraded) run check for upgrade action before executing upgrade action.
        attribute :check_upgrade
        validates :check_upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(true) and C(state) is I(upgraded) reboot host after successful upgrade.
        attribute :reboot_after_upgrade
        validates :reboot_after_upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and delete service offerings for guest and system VMs.
      # Update display_text of existing service offering.
      class Cs_service_offering < Base
        # @return [Object, nil] Bytes read rate of the disk offering.
        attribute :bytes_read_rate

        # @return [Object, nil] Bytes write rate of the disk offering.
        attribute :bytes_write_rate

        # @return [Integer, nil] The number of CPUs of the service offering.
        attribute :cpu_number
        validates :cpu_number, type: Integer

        # @return [Integer, nil] The CPU speed of the service offering in MHz.
        attribute :cpu_speed
        validates :cpu_speed, type: Integer

        # @return [Symbol, nil] Restrict the CPU usage to committed service offering.
        attribute :limit_cpu_usage
        validates :limit_cpu_usage, type: Symbol

        # @return [Object, nil] The deployment planner heuristics used to deploy a VM of this offering.,If not set, the value of global config C(vm.deployment.planner) is used.
        attribute :deployment_planner

        # @return [String, nil] Display text of the service offering.,If not set, C(name) will be used as C(display_text) while creating.
        attribute :display_text
        validates :display_text, type: String

        # @return [Object, nil] Domain the service offering is related to.,Public for all domains and subdomains if not set.
        attribute :domain

        # @return [String, nil] The host tagsfor this service offering.
        attribute :host_tags
        validates :host_tags, type: String

        # @return [Object, nil] Hypervisor snapshot reserve space as a percent of a volume.,Only for managed storage using Xen or VMware.
        attribute :hypervisor_snapshot_reserve

        # @return [Boolean, nil] Whether compute offering iops is custom or not.
        attribute :disk_iops_customized
        validates :disk_iops_customized, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] IO requests read rate of the disk offering.
        attribute :disk_iops_read_rate

        # @return [Object, nil] IO requests write rate of the disk offering.
        attribute :disk_iops_write_rate

        # @return [Object, nil] Max. iops of the compute offering.
        attribute :disk_iops_max

        # @return [Object, nil] Min. iops of the compute offering.
        attribute :disk_iops_min

        # @return [Symbol, nil] Whether it is a system VM offering or not.
        attribute :is_system
        validates :is_system, type: Symbol

        # @return [Symbol, nil] Whether the virtual machine needs to be volatile or not.,Every reboot of VM the root disk is detached then destroyed and a fresh root disk is created and attached to VM.
        attribute :is_volatile
        validates :is_volatile, type: Symbol

        # @return [Integer, nil] The total memory of the service offering in MB.
        attribute :memory
        validates :memory, type: Integer

        # @return [String] Name of the service offering.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Data transfer rate in Mb/s allowed.,Supported only for non-system offering and system offerings having C(system_vm_type=domainrouter).
        attribute :network_rate

        # @return [Symbol, nil] Whether HA is set for the service offering.
        attribute :offer_ha
        validates :offer_ha, type: Symbol

        # @return [:thin, :sparse, :fat, nil] Provisioning type used to create volumes.
        attribute :provisioning_type
        validates :provisioning_type, inclusion: {:in=>[:thin, :sparse, :fat], :message=>"%{value} needs to be :thin, :sparse, :fat"}, allow_nil: true

        # @return [Object, nil] Details for planner, used to store specific parameters.
        attribute :service_offering_details

        # @return [:present, :absent, nil] State of the service offering.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:local, :shared, nil] The storage type of the service offering.
        attribute :storage_type
        validates :storage_type, inclusion: {:in=>[:local, :shared], :message=>"%{value} needs to be :local, :shared"}, allow_nil: true

        # @return [:domainrouter, :consoleproxy, :secondarystoragevm, nil] The system VM type.,Required if C(is_system=true).
        attribute :system_vm_type
        validates :system_vm_type, inclusion: {:in=>[:domainrouter, :consoleproxy, :secondarystoragevm], :message=>"%{value} needs to be :domainrouter, :consoleproxy, :secondarystoragevm"}, allow_nil: true

        # @return [String, nil] The storage tags for this service offering.
        attribute :storage_tags
        validates :storage_tags, type: String
      end
    end
  end
end

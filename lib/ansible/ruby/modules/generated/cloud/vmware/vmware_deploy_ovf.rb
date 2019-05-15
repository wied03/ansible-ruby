# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to deploy a VMware VM from an OVF or OVA file
      class Vmware_deploy_ovf < Base
        # @return [String, nil] Whether or not to allow duplicate VM names. ESXi allows duplicates, vCenter may not.
        attribute :allow_duplicates
        validates :allow_duplicates, type: String

        # @return [String, nil] Datacenter to deploy to.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Object, nil] Cluster to deploy to.
        attribute :cluster

        # @return [String, nil] Datastore to deploy to.
        attribute :datastore
        validates :datastore, type: String

        # @return [Object, nil] The key of the chosen deployment option.
        attribute :deployment_option

        # @return [:flat, :eagerZeroedThick, :monolithicSparse, :twoGbMaxExtentSparse, :twoGbMaxExtentFlat, :thin, :sparse, :thick, :seSparse, :monolithicFlat, nil] Disk provisioning type.
        attribute :disk_provisioning
        validates :disk_provisioning, inclusion: {:in=>[:flat, :eagerZeroedThick, :monolithicSparse, :twoGbMaxExtentSparse, :twoGbMaxExtentFlat, :thin, :sparse, :thick, :seSparse, :monolithicFlat], :message=>"%{value} needs to be :flat, :eagerZeroedThick, :monolithicSparse, :twoGbMaxExtentSparse, :twoGbMaxExtentFlat, :thin, :sparse, :thick, :seSparse, :monolithicFlat"}, allow_nil: true

        # @return [String, nil] Cause the module to treat OVF Import Spec warnings as errors.
        attribute :fail_on_spec_warnings
        validates :fail_on_spec_warnings, type: String

        # @return [Object, nil] Absolute path of folder to place the virtual machine.,If not specified, defaults to the value of C(datacenter.vmFolder).
        attribute :folder

        # @return [Object, nil] Name of the VM to work with.,Virtual machine names in vCenter are not necessarily unique, which may be problematic.
        attribute :name

        # @return [Array<String>, String, nil] C(key: value) mapping of OVF network name, to the vCenter network name.
        attribute :networks
        validates :networks, type: TypeGeneric.new(String)

        # @return [String, nil] Path to OVF or OVA file to deploy.
        attribute :ovf
        validates :ovf, type: String

        # @return [Boolean, nil] Whether or not to power on the virtual machine after creation.
        attribute :power_on
        validates :power_on, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The assignment of values to the properties found in the OVF as key value pairs.
        attribute :properties

        # @return [String, nil] Resource Pool to deploy to.
        attribute :resource_pool
        validates :resource_pool, type: String

        # @return [Boolean, nil] Wait for the host to power on.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Wait until vCenter detects an IP address for the VM.,This requires vmware-tools (vmtoolsd) to properly work after creation.
        attribute :wait_for_ip_address
        validates :wait_for_ip_address, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

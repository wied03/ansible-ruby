# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, put into maintenance, disable, enable and remove storage pools.
      class Cs_storage_pool < Base
        # @return [String] Name of the storage pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the zone in which the host should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] URL of the storage pool.,Required if C(state=present).
        attribute :storage_url
        validates :storage_url, type: String

        # @return [String, nil] Name of the pod.
        attribute :pod
        validates :pod, type: String

        # @return [String, nil] Name of the cluster.
        attribute :cluster
        validates :cluster, type: String

        # @return [:cluster, :zone, nil] The scope of the storage pool.,Defaults to cluster when C(cluster) is provided, otherwise zone.
        attribute :scope
        validates :scope, expression_inclusion: {:in=>[:cluster, :zone], :message=>"%{value} needs to be :cluster, :zone"}, allow_nil: true

        # @return [Object, nil] Whether the storage pool should be managed by CloudStack.,Only considere on creation.
        attribute :managed

        # @return [:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator, nil] Required when creating a zone scoped pool.
        attribute :hypervisor
        validates :hypervisor, expression_inclusion: {:in=>[:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator], :message=>"%{value} needs to be :KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator"}, allow_nil: true

        # @return [Object, nil] Tags associated with this storage pool.
        attribute :storage_tags

        # @return [String, nil] Name of the storage provider e.g. SolidFire, SolidFireShared, DefaultPrimary, CloudByte.
        attribute :provider
        validates :provider, type: String

        # @return [Object, nil] Bytes CloudStack can provision from this storage pool.
        attribute :capacity_bytes

        # @return [Object, nil] Bytes CloudStack can provision from this storage pool.
        attribute :capacity_iops

        # @return [:enabled, :disabled, :maintenance, nil] Allocation state of the storage pool.
        attribute :allocation_state
        validates :allocation_state, expression_inclusion: {:in=>[:enabled, :disabled, :maintenance], :message=>"%{value} needs to be :enabled, :disabled, :maintenance"}, allow_nil: true

        # @return [:present, :absent, nil] State of the storage pool.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

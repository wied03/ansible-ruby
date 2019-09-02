# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage clusters in oVirt/RHV
      class Ovirt_cluster < Base
        # @return [String] Name of the cluster to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the cluster be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Datacenter name where cluster reside.
        attribute :data_center
        validates :data_center, type: String

        # @return [String, nil] Description of the cluster.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Comment of the cluster.
        attribute :comment

        # @return [Object, nil] Management network of cluster to access cluster hosts.
        attribute :network

        # @return [Boolean, nil] If I(True) enable memory balloon optimization. Memory balloon is used to re-distribute / reclaim the host memory based on VM needs in a dynamic way.
        attribute :ballooning
        validates :ballooning, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] If I(True), hosts in this cluster will be used to run virtual machines.
        attribute :virt

        # @return [Boolean, nil] If I(True), hosts in this cluster will be used as Gluster Storage server nodes, and not for running virtual machines.,By default the cluster is created for virtual machine hosts.
        attribute :gluster
        validates :gluster, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) the exposed host threads would be treated as cores which can be utilized by virtual machines.
        attribute :threads_as_cores
        validates :threads_as_cores, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] I I(True) MoM enables to run Kernel Same-page Merging I(KSM) when necessary and when it can yield a memory saving benefit that outweighs its CPU cost.
        attribute :ksm

        # @return [Boolean, nil] If I(True) enables KSM C(ksm) for best performance inside NUMA nodes.
        attribute :ksm_numa
        validates :ksm_numa, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) enables the oVirt/RHV to monitor cluster capacity for highly available virtual machines.
        attribute :ha_reservation
        validates :ha_reservation, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) enables integration with an OpenAttestation server.
        attribute :trusted_service
        validates :trusted_service, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) enables an optional reason field when a virtual machine is shut down from the Manager, allowing the administrator to provide an explanation for the maintenance.
        attribute :vm_reason
        validates :vm_reason, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) enables an optional reason field when a host is placed into maintenance mode from the Manager, allowing the administrator to provide an explanation for the maintenance.
        attribute :host_reason
        validates :host_reason, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:disabled, :server, :desktop, nil] I(disabled) - Disables memory page sharing.,I(server) - Sets the memory page sharing threshold to 150% of the system memory on each host.,I(desktop) - Sets the memory page sharing threshold to 200% of the system memory on each host.
        attribute :memory_policy
        validates :memory_policy, expression_inclusion: {:in=>[:disabled, :server, :desktop], :message=>"%{value} needs to be :disabled, :server, :desktop"}, allow_nil: true

        # @return [Array<String>, String, nil] List that specify the random number generator devices that all hosts in the cluster will use.,Supported generators are: I(hwrng) and I(random).
        attribute :rng_sources
        validates :rng_sources, type: TypeGeneric.new(String)

        # @return [Object, nil] The proxy by which the SPICE client will connect to virtual machines.,The address must be in the following format: I(protocol://[host]:[port])
        attribute :spice_proxy

        # @return [Object, nil] If I(True) enables fencing on the cluster.,Fencing is enabled by default.
        attribute :fence_enabled

        # @return [Object, nil] If I(True) any hosts in the cluster that are Non Responsive and still connected to storage will not be fenced.
        attribute :fence_skip_if_sd_active

        # @return [Object, nil] If I(True) fencing will be temporarily disabled if the percentage of hosts in the cluster that are experiencing connectivity issues is greater than or equal to the defined threshold.,The threshold can be specified by C(fence_connectivity_threshold).
        attribute :fence_skip_if_connectivity_broken

        # @return [Object, nil] The threshold used by C(fence_skip_if_connectivity_broken).
        attribute :fence_connectivity_threshold

        # @return [:do_not_migrate, :migrate, :migrate_highly_available, nil] The resilience policy defines how the virtual machines are prioritized in the migration.,Following values are supported:,C(do_not_migrate) -  Prevents virtual machines from being migrated. ,C(migrate) - Migrates all virtual machines in order of their defined priority.,C(migrate_highly_available) - Migrates only highly available virtual machines to prevent overloading other hosts.
        attribute :resilience_policy
        validates :resilience_policy, expression_inclusion: {:in=>[:do_not_migrate, :migrate, :migrate_highly_available], :message=>"%{value} needs to be :do_not_migrate, :migrate, :migrate_highly_available"}, allow_nil: true

        # @return [:auto, :hypervisor_default, :custom, nil] The bandwidth settings define the maximum bandwidth of both outgoing and incoming migrations per host.,Following bandwidth options are supported:,C(auto) - Bandwidth is copied from the I(rate limit) [Mbps] setting in the data center host network QoS.,C(hypervisor_default) - Bandwidth is controlled by local VDSM setting on sending host.,C(custom) - Defined by user (in Mbps).
        attribute :migration_bandwidth
        validates :migration_bandwidth, expression_inclusion: {:in=>[:auto, :hypervisor_default, :custom], :message=>"%{value} needs to be :auto, :hypervisor_default, :custom"}, allow_nil: true

        # @return [Object, nil] Set the I(custom) migration bandwidth limit.,This parameter is used only when C(migration_bandwidth) is I(custom).
        attribute :migration_bandwidth_limit

        # @return [:true, :false, :inherit, nil] If I(True) auto-convergence is used during live migration of virtual machines.,Used only when C(migration_policy) is set to I(legacy).,Following options are supported:,C(true) - Override the global setting to I(true).,C(false) - Override the global setting to I(false).,C(inherit) - Use value which is set globally.
        attribute :migration_auto_converge
        validates :migration_auto_converge, expression_inclusion: {:in=>[:true, :false, :inherit], :message=>"%{value} needs to be :true, :false, :inherit"}, allow_nil: true

        # @return [:true, :false, :inherit, nil] If I(True) compression is used during live migration of the virtual machine.,Used only when C(migration_policy) is set to I(legacy).,Following options are supported:,C(true) - Override the global setting to I(true).,C(false) - Override the global setting to I(false).,C(inherit) - Use value which is set globally.
        attribute :migration_compressed
        validates :migration_compressed, expression_inclusion: {:in=>[:true, :false, :inherit], :message=>"%{value} needs to be :true, :false, :inherit"}, allow_nil: true

        # @return [:legacy, :minimal_downtime, :suspend_workload, :post_copy, nil] A migration policy defines the conditions for live migrating virtual machines in the event of host failure.,Following policies are supported:,C(legacy) - Legacy behavior of 3.6 version.,C(minimal_downtime) - Virtual machines should not experience any significant downtime.,C(suspend_workload) - Virtual machines may experience a more significant downtime.,C(post_copy) - Virtual machines should not experience any significant downtime. If the VM migration is not converging for a long time, the migration will be switched to post-copy. Added in version I(2.4).
        attribute :migration_policy
        validates :migration_policy, expression_inclusion: {:in=>[:legacy, :minimal_downtime, :suspend_workload, :post_copy], :message=>"%{value} needs to be :legacy, :minimal_downtime, :suspend_workload, :post_copy"}, allow_nil: true

        # @return [Object, nil] Specify a serial number policy for the virtual machines in the cluster.,Following options are supported:,C(vm) - Sets the virtual machine's UUID as its serial number.,C(host) - Sets the host's UUID as the virtual machine's serial number.,C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).
        attribute :serial_policy

        # @return [Object, nil] Allows you to specify a custom serial number.,This parameter is used only when C(serial_policy) is I(custom).
        attribute :serial_policy_value

        # @return [Object, nil] Name of the scheduling policy to be used for cluster.
        attribute :scheduling_policy

        # @return [Object, nil] Custom scheduling policy properties of the cluster.,These optional properties override the properties of the scheduling policy specified by the C(scheduling_policy) parameter.
        attribute :scheduling_policy_properties

        # @return [:x86_64, :ppc64, :undefined, nil] CPU architecture of cluster.
        attribute :cpu_arch
        validates :cpu_arch, expression_inclusion: {:in=>[:x86_64, :ppc64, :undefined], :message=>"%{value} needs to be :x86_64, :ppc64, :undefined"}, allow_nil: true

        # @return [String, nil] CPU codename. For example I(Intel SandyBridge Family).
        attribute :cpu_type
        validates :cpu_type, type: String

        # @return [:legacy, :ovs, nil] Type of switch to be used by all networks in given cluster. Either I(legacy) which is using linux bridge or I(ovs) using Open vSwitch.
        attribute :switch_type
        validates :switch_type, expression_inclusion: {:in=>[:legacy, :ovs], :message=>"%{value} needs to be :legacy, :ovs"}, allow_nil: true

        # @return [Float, nil] The compatibility version of the cluster. All hosts in this cluster must support at least this compatibility version.
        attribute :compatibility_version
        validates :compatibility_version, type: Float

        # @return [Object, nil] MAC pool to be used by this cluster.,C(Note:),This is supported since oVirt version 4.1.
        attribute :mac_pool

        # @return [Array<Hash>, Hash, nil] List of references to the external network providers available in the cluster. If the automatic deployment of the external network provider is supported, the networks of the referenced network provider are available on every host in the cluster.,External network provider is described by following dictionary:,C(name) - Name of the external network provider. Either C(name) or C(id) is required.,C(id) - ID of the external network provider. Either C(name) or C(id) is required.,This is supported since oVirt version 4.2.
        attribute :external_network_providers
        validates :external_network_providers, type: TypeGeneric.new(Hash)
      end
    end
  end
end

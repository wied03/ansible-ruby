# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ServiceEngineGroup object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_serviceenginegroup < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Service engines in active/standby mode for ha failover.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :active_standby

        # @return [Object, nil] Advertise reach-ability of backend server networks via adc through bgp for default gateway feature.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :advertise_backend_networks

        # @return [Object, nil] Enable aggressive failover configuration for ha.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :aggressive_failure_detection

        # @return [Object, nil] In compact placement, virtual services are placed on existing ses until max_vs_per_se limit is reached.,Enum options - PLACEMENT_ALGO_PACKED, PLACEMENT_ALGO_DISTRIBUTED.,Default value when not specified in API or module is interpreted by Avi Controller as PLACEMENT_ALGO_PACKED.
        attribute :algo

        # @return [Object, nil] Allow ses to be created using burst license.,Field introduced in 17.2.5.
        attribute :allow_burst

        # @return [Object, nil] Amount of se memory in gb until which shared memory is collected in core archive.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as 8.,Units(GB).
        attribute :archive_shm_limit

        # @return [Object, nil] Ssl handshakes will be handled by dedicated ssl threads.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :async_ssl

        # @return [Object, nil] Number of async ssl threads per se_dp.,Allowed values are 1-16.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :async_ssl_threads

        # @return [Object, nil] If set, virtual services will be automatically migrated when load on an se is less than minimum or more than maximum thresholds.,Only alerts are generated when the auto_rebalance is not set.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :auto_rebalance

        # @return [Object, nil] Capacities of se for auto rebalance for each criteria.,Field introduced in 17.2.4.
        attribute :auto_rebalance_capacity_per_se

        # @return [Object, nil] Set of criteria for se auto rebalance.,Enum options - SE_AUTO_REBALANCE_CPU, SE_AUTO_REBALANCE_PPS, SE_AUTO_REBALANCE_MBPS, SE_AUTO_REBALANCE_OPEN_CONNS, SE_AUTO_REBALANCE_CPS.,Field introduced in 17.2.3.
        attribute :auto_rebalance_criteria

        # @return [Object, nil] Frequency of rebalance, if 'auto rebalance' is enabled.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :auto_rebalance_interval

        # @return [Object, nil] Redistribution of virtual services from the takeover se to the replacement se can cause momentary traffic loss.,If the auto-redistribute load option is left in its default off state, any desired rebalancing requires calls to rest api.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :auto_redistribute_active_standby_load

        # @return [Object, nil] Excess service engine capacity provisioned for ha failover.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :buffer_se

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] Percentage of memory for connection state.,This will come at the expense of memory used for http in-memory cache.,Allowed values are 10-90.,Default value when not specified in API or module is interpreted by Avi Controller as 50.,Units(PERCENT).
        attribute :connection_memory_percentage

        # @return [Object, nil] Boolean flag to set cpu_reserve.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :cpu_reserve

        # @return [Object, nil] Allocate all the cpu cores for the service engine virtual machines  on the same cpu socket.,Applicable only for vcenter cloud.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :cpu_socket_affinity

        # @return [Object, nil] Custom security groups to be associated with data vnics for se instances in openstack and aws clouds.,Field introduced in 17.1.3.
        attribute :custom_securitygroups_data

        # @return [Object, nil] Custom security groups to be associated with management vnic for se instances in openstack and aws clouds.,Field introduced in 17.1.3.
        attribute :custom_securitygroups_mgmt

        # @return [Object, nil] Custom tag will be used to create the tags for se instance in aws.,Note this is not the same as the prefix for se name.
        attribute :custom_tag

        # @return [Object, nil] Dedicate the core that handles packet receive/transmit from the network to just the dispatching function.,Don't use it for tcp/ip and ssl functions.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :dedicated_dispatcher_core

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Stop using tcp/udp and ip checksum offload features of nics.,Field introduced in 17.1.14, 17.2.5.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :disable_csum_offloads

        # @return [Object, nil] Disable generic receive offload (gro) in dpdk poll-mode driver packet receive path.,Gro is on by default on nics that do not support lro (large receive offload) or do not gain performance boost from lro.,Field introduced in 17.2.5.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :disable_gro

        # @return [Object, nil] Disable tcp segmentation offload (tso) in dpdk poll-mode driver packet transmit path.,Tso is on by default on nics that support it.,Field introduced in 17.2.5.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :disable_tso

        # @return [Object, nil] Amount of disk space for each of the service engine virtual machines.,Default value when not specified in API or module is interpreted by Avi Controller as 10.,Units(GB).
        attribute :disk_per_se

        # @return [Object, nil] Use both the active and standby service engines for virtual service placement in the legacy active standby ha mode.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :distribute_load_active_standby

        # @return [Object, nil] (this is a beta feature).,Enable hsm key priming.,If enabled, key handles on the hsm will be synced to se before processing client connections.,Field introduced in 17.2.7.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :enable_hsm_priming

        # @return [Object, nil] Enable routing for this serviceenginegroup .,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :enable_routing

        # @return [Object, nil] Enable vip on all interfaces of se.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enable_vip_on_all_interfaces

        # @return [Object, nil] Use virtual mac address for interfaces on which floating interface ips are placed.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :enable_vmac

        # @return [Object, nil] Multiplier for extra config to support large vs/pool config.,Default value when not specified in API or module is interpreted by Avi Controller as 0.0.
        attribute :extra_config_multiplier

        # @return [Object, nil] Extra config memory to support large geo db configuration.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as 0.,Units(MB).
        attribute :extra_shared_config_memory

        # @return [Object, nil] If serviceenginegroup is configured for legacy 1+1 active standby ha mode, floating ip's will be advertised only by the active se in the pair.,Virtual services in this group must be disabled/enabled for any changes to the floating ip's to take effect.,Only active se hosting vs tagged with active standby se 1 tag will advertise this floating ip when manual load distribution is enabled.
        attribute :floating_intf_ip

        # @return [Object, nil] If serviceenginegroup is configured for legacy 1+1 active standby ha mode, floating ip's will be advertised only by the active se in the pair.,Virtual services in this group must be disabled/enabled for any changes to the floating ip's to take effect.,Only active se hosting vs tagged with active standby se 2 tag will advertise this floating ip when manual load distribution is enabled.
        attribute :floating_intf_ip_se_2

        # @return [Object, nil] Maximum number of flow table entries that have not completed tcp three-way handshake yet.,Field introduced in 17.2.5.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :flow_table_new_syn_max_entries

        # @return [Object, nil] High availability mode for all the virtual services using this service engine group.,Enum options - HA_MODE_SHARED_PAIR, HA_MODE_SHARED, HA_MODE_LEGACY_ACTIVE_STANDBY.,Default value when not specified in API or module is interpreted by Avi Controller as HA_MODE_SHARED.
        attribute :ha_mode

        # @return [Object, nil] It is a reference to an object of type hardwaresecuritymodulegroup.
        attribute :hardwaresecuritymodulegroup_ref

        # @return [Object, nil] Enable active health monitoring from the standby se for all placed virtual services.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :hm_on_standby

        # @return [Object, nil] Key of a (key, value) pair identifying a label for a set of nodes usually in container clouds.,Needs to be specified together with host_attribute_value.,Ses can be configured differently including ha modes across different se groups.,May also be used for isolation between different classes of virtualservices.,Virtualservices' se group may be specified via annotations/labels.,A openshift/kubernetes namespace maybe annotated with a matching se group label as openshift.io/node-selector  apptype=prod.,When multiple se groups are used in a cloud with host attributes specified,just a single se group can exist as a match-all se group without a,host_attribute_key.
        attribute :host_attribute_key

        # @return [Object, nil] Value of a (key, value) pair identifying a label for a set of nodes usually in container clouds.,Needs to be specified together with host_attribute_key.
        attribute :host_attribute_value

        # @return [Object, nil] Enable the host gateway monitor when service engine is deployed as docker container.,Disabled by default.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :host_gateway_monitor

        # @return [Object, nil] Override default hypervisor.,Enum options - DEFAULT, VMWARE_ESX, KVM, VMWARE_VSAN, XEN.
        attribute :hypervisor

        # @return [Object, nil] Ignore rtt samples if it is above threshold.,Field introduced in 17.1.6,17.2.2.,Default value when not specified in API or module is interpreted by Avi Controller as 5000.,Units(MILLISECONDS).
        attribute :ignore_rtt_threshold

        # @return [Object, nil] Program se security group ingress rules to allow vip data access from remote cidr type.,Enum options - SG_INGRESS_ACCESS_NONE, SG_INGRESS_ACCESS_ALL, SG_INGRESS_ACCESS_VPC.,Field introduced in 17.1.5.,Default value when not specified in API or module is interpreted by Avi Controller as SG_INGRESS_ACCESS_ALL.
        attribute :ingress_access_data

        # @return [Object, nil] Program se security group ingress rules to allow ssh/icmp management access from remote cidr type.,Enum options - SG_INGRESS_ACCESS_NONE, SG_INGRESS_ACCESS_ALL, SG_INGRESS_ACCESS_VPC.,Field introduced in 17.1.5.,Default value when not specified in API or module is interpreted by Avi Controller as SG_INGRESS_ACCESS_ALL.
        attribute :ingress_access_mgmt

        # @return [Object, nil] Instance/flavor type for se instance.
        attribute :instance_flavor

        # @return [Object, nil] Iptable rules.
        attribute :iptables

        # @return [Object, nil] Select core with least load for new flow.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :least_load_core_selection

        # @return [Object, nil] Specifies the license tier which would be used.,This field by default inherits the value from cloud.,Enum options - ENTERPRISE_16, ENTERPRISE_18.,Field introduced in 17.2.5.
        attribute :license_tier

        # @return [Object, nil] If no license type is specified then default license enforcement for the cloud type is chosen.,Enum options - LIC_BACKEND_SERVERS, LIC_SOCKETS, LIC_CORES, LIC_HOSTS, LIC_SE_BANDWIDTH.,Field introduced in 17.2.5.
        attribute :license_type

        # @return [Object, nil] Maximum disk capacity (in mb) to be allocated to an se.,This is exclusively used for debug and log data.,Default value when not specified in API or module is interpreted by Avi Controller as 10000.,Units(MB).
        attribute :log_disksz

        # @return [Object, nil] When cpu usage on an se exceeds this threshold, virtual services hosted on this se may be rebalanced to other ses to reduce load.,A new se may be created as part of this process.,Allowed values are 40-90.,Default value when not specified in API or module is interpreted by Avi Controller as 80.,Units(PERCENT).
        attribute :max_cpu_usage

        # @return [Object, nil] Maximum number of active service engines for the virtual service.,Allowed values are 1-64.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :max_scaleout_per_vs

        # @return [Object, nil] Maximum number of services engines in this group.,Allowed values are 0-1000.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :max_se

        # @return [Object, nil] Maximum number of virtual services that can be placed on a single service engine.,East west virtual services are excluded from this limit.,Allowed values are 1-1000.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :max_vs_per_se

        # @return [Object, nil] Boolean flag to set mem_reserve.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :mem_reserve

        # @return [Object, nil] Amount of memory for each of the service engine virtual machines.,Default value when not specified in API or module is interpreted by Avi Controller as 2048.
        attribute :memory_per_se

        # @return [Object, nil] Management network to use for avi service engines.,It is a reference to an object of type network.
        attribute :mgmt_network_ref

        # @return [Object, nil] Management subnet to use for avi service engines.
        attribute :mgmt_subnet

        # @return [Object, nil] When cpu usage on an se falls below the minimum threshold, virtual services hosted on the se may be consolidated onto other underutilized ses.,After consolidation, unused service engines may then be eligible for deletion.,Allowed values are 20-60.,Default value when not specified in API or module is interpreted by Avi Controller as 30.,Units(PERCENT).
        attribute :min_cpu_usage

        # @return [Object, nil] Minimum number of active service engines for the virtual service.,Allowed values are 1-64.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :min_scaleout_per_vs

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] This setting limits the number of non-significant logs generated per second per core on this se.,Default is 100 logs per second.,Set it to zero (0) to disable throttling.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as 100.,Units(PER_SECOND).
        attribute :non_significant_log_throttle

        # @return [Object, nil] Number of changes in num flow cores sum to ignore.,Default value when not specified in API or module is interpreted by Avi Controller as 8.
        attribute :num_flow_cores_sum_changes_to_ignore

        # @return [Object, nil] Field deprecated in 17.1.1.
        attribute :openstack_availability_zone

        # @return [Object, nil] Field introduced in 17.1.1.
        attribute :openstack_availability_zones

        # @return [Object, nil] Avi management network name.
        attribute :openstack_mgmt_network_name

        # @return [Object, nil] Management network uuid.
        attribute :openstack_mgmt_network_uuid

        # @return [Object, nil] Amount of extra memory to be reserved for use by the operating system on a service engine.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :os_reserved_memory

        # @return [Object, nil] Per-app se mode is designed for deploying dedicated load balancers per app (vs).,In this mode, each se is limited to a max of 2 vss.,Vcpus in per-app ses count towards licensing usage at 25% rate.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :per_app

        # @return [Object, nil] If placement mode is 'auto', virtual services are automatically placed on service engines.,Enum options - PLACEMENT_MODE_AUTO.,Default value when not specified in API or module is interpreted by Avi Controller as PLACEMENT_MODE_AUTO.
        attribute :placement_mode

        # @return [Object, nil] Enable or disable real time se metrics.
        attribute :realtime_se_metrics

        # @return [Object, nil] Select the se bandwidth for the bandwidth license.,Enum options - SE_BANDWIDTH_UNLIMITED, SE_BANDWIDTH_25M, SE_BANDWIDTH_200M, SE_BANDWIDTH_1000M, SE_BANDWIDTH_10000M.,Field introduced in 17.2.5.
        attribute :se_bandwidth_type

        # @return [Object, nil] Duration to preserve unused service engine virtual machines before deleting them.,If traffic to a virtual service were to spike up abruptly, this se would still be available to be utilized again rather than creating a new se.,If this value is set to 0, controller will never delete any ses and administrator has to manually cleanup unused ses.,Allowed values are 0-525600.,Default value when not specified in API or module is interpreted by Avi Controller as 120.,Units(MIN).
        attribute :se_deprovision_delay

        # @return [Object, nil] Dosthresholdprofile settings for serviceenginegroup.
        attribute :se_dos_profile

        # @return [Object, nil] Udp port for se_dp ipc in docker bridge mode.,Field introduced in 17.1.2.,Default value when not specified in API or module is interpreted by Avi Controller as 1500.
        attribute :se_ipc_udp_port

        # @return [Object, nil] Prefix to use for virtual machine name of service engines.,Default value when not specified in API or module is interpreted by Avi Controller as Avi.
        attribute :se_name_prefix

        # @return [Object, nil] Tcp port on se where echo service will be run.,Field introduced in 17.2.2.,Default value when not specified in API or module is interpreted by Avi Controller as 7.
        attribute :se_probe_port

        # @return [Object, nil] Udp port for punted packets in docker bridge mode.,Field introduced in 17.1.2.,Default value when not specified in API or module is interpreted by Avi Controller as 1501.
        attribute :se_remote_punt_udp_port

        # @return [Object, nil] Sideband traffic will be handled by a dedicated core.,Field introduced in 16.5.2, 17.1.9, 17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :se_sb_dedicated_core

        # @return [Object, nil] Number of sideband threads per se.,Allowed values are 1-128.,Field introduced in 16.5.2, 17.1.9, 17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :se_sb_threads

        # @return [Object, nil] Multiplier for se threads based on vcpu.,Allowed values are 1-10.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :se_thread_multiplier

        # @return [Object, nil] Determines if dsr from secondary se is active or not  0  automatically determine based on hypervisor type.,1  disable dsr unconditionally.,~[0,1]  enable dsr unconditionally.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :se_tunnel_mode

        # @return [Object, nil] Udp port for tunneled packets from secondary to primary se in docker bridge mode.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as 1550.
        attribute :se_tunnel_udp_port

        # @return [Object, nil] Determines if se-se ipc messages are encapsulated in an udp header  0  automatically determine based on hypervisor type.,1  use udp encap unconditionally.,~[0,1]  don't use udp encap.,Field introduced in 17.1.2.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :se_udp_encap_ipc

        # @return [Object, nil] Maximum number of aggregated vs heartbeat packets to send in a batch.,Allowed values are 1-256.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as 8.
        attribute :se_vs_hb_max_pkts_in_batch

        # @return [Object, nil] Maximum number of virtualservices for which heartbeat messages are aggregated in one packet.,Allowed values are 1-1024.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as 256.
        attribute :se_vs_hb_max_vs_in_pkt

        # @return [Object, nil] Subnets assigned to the se group.,Required for vs group placement.,Field introduced in 17.1.1.
        attribute :service_ip_subnets

        # @return [Object, nil] This setting limits the number of significant logs generated per second per core on this se.,Default is 100 logs per second.,Set it to zero (0) to disable throttling.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as 100.,Units(PER_SECOND).
        attribute :significant_log_throttle

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] This setting limits the number of udf logs generated per second per core on this se.,Udf logs are generated due to the configured client log filters or the rules with logging enabled.,Default is 100 logs per second.,Set it to zero (0) to disable throttling.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as 100.,Units(PER_SECOND).
        attribute :udf_log_throttle

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid

        # @return [Object, nil] Vcenterclusters settings for serviceenginegroup.
        attribute :vcenter_clusters

        # @return [Object, nil] Enum options - vcenter_datastore_any, vcenter_datastore_local, vcenter_datastore_shared.,Default value when not specified in API or module is interpreted by Avi Controller as VCENTER_DATASTORE_ANY.
        attribute :vcenter_datastore_mode

        # @return [Object, nil] List of vcenterdatastore.
        attribute :vcenter_datastores

        # @return [Object, nil] Boolean flag to set vcenter_datastores_include.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :vcenter_datastores_include

        # @return [Object, nil] Folder to place all the service engine virtual machines in vcenter.,Default value when not specified in API or module is interpreted by Avi Controller as AviSeFolder.
        attribute :vcenter_folder

        # @return [Object, nil] Vcenterhosts settings for serviceenginegroup.
        attribute :vcenter_hosts

        # @return [Object, nil] Number of vcpus for each of the service engine virtual machines.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :vcpus_per_se

        # @return [Object, nil] Ensure primary and secondary service engines are deployed on different physical hosts.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :vs_host_redundancy

        # @return [Object, nil] Time to wait for the scaled in se to drain existing flows before marking the scalein done.,Default value when not specified in API or module is interpreted by Avi Controller as 30.,Units(SEC).
        attribute :vs_scalein_timeout

        # @return [Object, nil] During se upgrade, time to wait for the scaled-in se to drain existing flows before marking the scalein done.,Default value when not specified in API or module is interpreted by Avi Controller as 30.,Units(SEC).
        attribute :vs_scalein_timeout_for_upgrade

        # @return [Object, nil] Time to wait for the scaled out se to become ready before marking the scaleout done.,Default value when not specified in API or module is interpreted by Avi Controller as 30.,Units(SEC).
        attribute :vs_scaleout_timeout

        # @return [Object, nil] If set, virtual services will be placed on only a subset of the cores of an se.,Field introduced in 17.2.5.
        attribute :vss_placement

        # @return [Object, nil] Enable memory pool for waf.,Field introduced in 17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :waf_mempool

        # @return [Object, nil] Memory pool size used for waf.,Field introduced in 17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as 64.,Units(KB).
        attribute :waf_mempool_size
      end
    end
  end
end

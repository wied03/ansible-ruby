# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure VirtualService object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_virtualservice < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] This configuration only applies if the virtualservice is in legacy active standby ha mode and load distribution among active standby is enabled.,This field is used to tag the virtualservice so that virtualservices with the same tag will share the same active serviceengine.,Virtualservices with different tags will have different active serviceengines.,If one of the serviceengine's in the serviceenginegroup fails, all virtualservices will end up using the same active serviceengine.,Redistribution of the virtualservices can be either manual or automated when the failed serviceengine recovers.,Redistribution is based on the auto redistribute property of the serviceenginegroup.,Enum options - ACTIVE_STANDBY_SE_1, ACTIVE_STANDBY_SE_2.,Default value when not specified in API or module is interpreted by Avi Controller as ACTIVE_STANDBY_SE_1.
        attribute :active_standby_se_tag

        # @return [Object, nil] Determines analytics settings for the application.
        attribute :analytics_policy

        # @return [Object, nil] Specifies settings related to analytics.,It is a reference to an object of type analyticsprofile.
        attribute :analytics_profile_ref

        # @return [String, nil] Enable application layer specific features for the virtual service.,It is a reference to an object of type applicationprofile.
        attribute :application_profile_ref
        validates :application_profile_ref, type: String

        # @return [Object, nil] Auto-allocate floating/elastic ip from the cloud infrastructure.,Field deprecated in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :auto_allocate_floating_ip

        # @return [Object, nil] Auto-allocate vip from the provided subnet.,Field deprecated in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :auto_allocate_ip

        # @return [Object, nil] Availability-zone to place the virtual service.,Field deprecated in 17.1.1.
        attribute :availability_zone

        # @return [Object, nil] (internal-use) fip allocated by avi in the cloud infrastructure.,Field deprecated in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :avi_allocated_fip

        # @return [Object, nil] (internal-use) vip allocated by avi in the cloud infrastructure.,Field deprecated in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :avi_allocated_vip

        # @return [Object, nil] (this is a beta feature).,Sync key-value cache to the new ses when vs is scaled out.,For ex  ssl sessions are stored using vs's key-value cache.,When the vs is scaled out, the ssl session information is synced to the new se, allowing existing ssl sessions to be reused on the new se.,Field introduced in 17.2.7, 18.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :bulk_sync_kvcache

        # @return [Object, nil] Http authentication configuration for protected resources.
        attribute :client_auth

        # @return [Object, nil] Close client connection on vs config update.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :close_client_conn_on_config_update

        # @return [Object, nil] Checksum of cloud configuration for vs.,Internally set by cloud connector.
        attribute :cloud_config_cksum

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] Enum options - cloud_none, cloud_vcenter, cloud_openstack, cloud_aws, cloud_vca, cloud_apic, cloud_mesos, cloud_linuxserver, cloud_docker_ucp,,cloud_rancher, cloud_oshift_k8s, cloud_azure.,Default value when not specified in API or module is interpreted by Avi Controller as CLOUD_NONE.
        attribute :cloud_type

        # @return [Object, nil] Rate limit the incoming connections to this virtual service.
        attribute :connections_rate_limit

        # @return [Object, nil] Profile used to match and rewrite strings in request and/or response body.
        attribute :content_rewrite

        # @return [Object, nil] Creator name.
        attribute :created_by

        # @return [Object, nil] Select the algorithm for qos fairness.,This determines how multiple virtual services sharing the same service engines will prioritize traffic over a congested network.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :delay_fairness

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] (internal-use) discovered networks providing reachability for client facing virtual service ip.,This field is deprecated.,It is a reference to an object of type network.,Field deprecated in 17.1.1.
        attribute :discovered_network_ref

        # @return [Object, nil] (internal-use) discovered networks providing reachability for client facing virtual service ip.,This field is used internally by avi, not editable by the user.,Field deprecated in 17.1.1.
        attribute :discovered_networks

        # @return [Object, nil] (internal-use) discovered subnets providing reachability for client facing virtual service ip.,This field is deprecated.,Field deprecated in 17.1.1.
        attribute :discovered_subnet

        # @return [Object, nil] Service discovery specific data including fully qualified domain name, type and time-to-live of the dns record.,Note that only one of fqdn and dns_info setting is allowed.
        attribute :dns_info

        # @return [Object, nil] Dns policies applied on the dns traffic of the virtual service.,Field introduced in 17.1.1.
        attribute :dns_policies

        # @return [Object, nil] Force placement on all se's in service group (mesos mode only).,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :east_west_placement

        # @return [Object, nil] Response traffic to clients will be sent back to the source mac address of the connection, rather than statically sent to a default gateway.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enable_autogw

        # @return [Object, nil] Enable route health injection using the bgp config in the vrf context.
        attribute :enable_rhi

        # @return [Object, nil] Enable route health injection for source nat'ted floating ip address using the bgp config in the vrf context.
        attribute :enable_rhi_snat

        # @return [Object, nil] Enable or disable the virtual service.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enabled

        # @return [Object, nil] Error page profile to be used for this virtualservice.this profile is used to send the custom error page to the client generated by the proxy.,It is a reference to an object of type errorpageprofile.,Field introduced in 17.2.4.
        attribute :error_page_profile_ref

        # @return [Object, nil] Floating ip to associate with this virtual service.,Field deprecated in 17.1.1.
        attribute :floating_ip

        # @return [Object, nil] If auto_allocate_floating_ip is true and more than one floating-ip subnets exist, then the subnet for the floating ip address allocation.,This field is applicable only if the virtualservice belongs to an openstack or aws cloud.,In openstack or aws cloud it is required when auto_allocate_floating_ip is selected.,Field deprecated in 17.1.1.
        attribute :floating_subnet_uuid

        # @return [Object, nil] Criteria for flow distribution among ses.,Enum options - LOAD_AWARE, CONSISTENT_HASH_SOURCE_IP_ADDRESS, CONSISTENT_HASH_SOURCE_IP_ADDRESS_AND_PORT.,Default value when not specified in API or module is interpreted by Avi Controller as LOAD_AWARE.
        attribute :flow_dist

        # @return [Object, nil] Criteria for flow labelling.,Enum options - NO_LABEL, APPLICATION_LABEL, SERVICE_LABEL.,Default value when not specified in API or module is interpreted by Avi Controller as NO_LABEL.
        attribute :flow_label_type

        # @return [Object, nil] Dns resolvable, fully qualified domain name of the virtualservice.,Only one of 'fqdn' and 'dns_info' configuration is allowed.
        attribute :fqdn

        # @return [Object, nil] Translate the host name sent to the servers to this value.,Translate the host name sent from servers back to the value used by the client.
        attribute :host_name_xlate

        # @return [Object, nil] Http policies applied on the data traffic of the virtual service.
        attribute :http_policies

        # @return [Object, nil] Ignore pool servers network reachability constraints for virtual service placement.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :ign_pool_net_reach

        # @return [NilClass, nil] Ip address of the virtual service.,Field deprecated in 17.1.1.
        attribute :ip_address
        validates :ip_address, type: NilClass

        # @return [Object, nil] Subnet and/or network for allocating virtualservice ip by ipam provider module.,Field deprecated in 17.1.1.
        attribute :ipam_network_subnet

        # @return [Object, nil] L4 policies applied to the data traffic of the virtual service.,Field introduced in 17.2.7.
        attribute :l4_policies

        # @return [Object, nil] Limit potential dos attackers who exceed max_cps_per_client significantly to a fraction of max_cps_per_client for a while.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :limit_doser

        # @return [Object, nil] Maximum connections per second per client ip.,Allowed values are 10-1000.,Special values are 0- 'unlimited'.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :max_cps_per_client

        # @return [Object, nil] Microservice representing the virtual service.,It is a reference to an object of type microservice.
        attribute :microservice_ref

        # @return [String] Name for the virtual service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Determines network settings such as protocol, tcp or udp, and related options for the protocol.,It is a reference to an object of type networkprofile.
        attribute :network_profile_ref

        # @return [Object, nil] Manually override the network on which the virtual service is placed.,It is a reference to an object of type network.,Field deprecated in 17.1.1.
        attribute :network_ref

        # @return [Object, nil] Network security policies for the virtual service.,It is a reference to an object of type networksecuritypolicy.
        attribute :network_security_policy_ref

        # @return [Object, nil] A list of nsx service groups representing the clients which can access the virtual ip of the virtual service.,Field introduced in 17.1.1.
        attribute :nsx_securitygroup

        # @return [NilClass, nil] Optional settings that determine performance limits like max connections or bandwdith etc.
        attribute :performance_limits
        validates :performance_limits, type: NilClass

        # @return [Object, nil] The pool group is an object that contains pools.,It is a reference to an object of type poolgroup.
        attribute :pool_group_ref

        # @return [String, nil] The pool is an object that contains destination servers and related attributes such as load-balancing and persistence.,It is a reference to an object of type pool.
        attribute :pool_ref
        validates :pool_ref, type: String

        # @return [Object, nil] (internal-use) network port assigned to the virtual service ip address.,Field deprecated in 17.1.1.
        attribute :port_uuid

        # @return [Object, nil] Remove listening port if virtualservice is down.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :remove_listening_port_on_vs_down

        # @return [Object, nil] Rate limit the incoming requests to this virtual service.
        attribute :requests_rate_limit

        # @return [Object, nil] Disable re-distribution of flows across service engines for a virtual service.,Enable if the network itself performs flow hashing with ecmp in environments such as gcp.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :scaleout_ecmp

        # @return [Object, nil] The service engine group to use for this virtual service.,Moving to a new se group is disruptive to existing connections for this vs.,It is a reference to an object of type serviceenginegroup.
        attribute :se_group_ref

        # @return [Object, nil] Determines the network settings profile for the server side of tcp proxied connections.,Leave blank to use the same settings as the client to vs side of the connection.,It is a reference to an object of type networkprofile.
        attribute :server_network_profile_ref

        # @return [Object, nil] Metadata pertaining to the service provided by this virtual service.,In openshift/kubernetes environments, egress pod info is stored.,Any user input to this field will be overwritten by avi vantage.
        attribute :service_metadata

        # @return [Object, nil] Select pool based on destination port.
        attribute :service_pool_select

        # @return [Array<Hash>, Hash, nil] List of services defined for this virtual service.
        attribute :services
        validates :services, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Sideband configuration to be used for this virtualservice.it can be used for sending traffic to sideband vips for external inspection etc.
        attribute :sideband_profile

        # @return [Object, nil] Nat'ted floating source ip address(es) for upstream connection to servers.
        attribute :snat_ip

        # @return [Object, nil] Gslb pools used to manage site-persistence functionality.,Each site-persistence pool contains the virtualservices in all the other sites, that is auto-generated by the gslb manager.,This is a read-only field for the user.,It is a reference to an object of type pool.,Field introduced in 17.2.2.
        attribute :sp_pool_refs

        # @return [Array<String>, String, nil] Select or create one or two certificates, ec and/or rsa, that will be presented to ssl/tls terminated connections.,It is a reference to an object of type sslkeyandcertificate.
        attribute :ssl_key_and_certificate_refs
        validates :ssl_key_and_certificate_refs, type: TypeGeneric.new(String)

        # @return [String, nil] Determines the set of ssl versions and ciphers to accept for ssl/tls terminated connections.,It is a reference to an object of type sslprofile.
        attribute :ssl_profile_ref
        validates :ssl_profile_ref, type: String

        # @return [Object, nil] Expected number of ssl session cache entries (may be exceeded).,Allowed values are 1024-16383.,Default value when not specified in API or module is interpreted by Avi Controller as 1024.
        attribute :ssl_sess_cache_avg_size

        # @return [Object, nil] List of static dns records applied to this virtual service.,These are static entries and no health monitoring is performed against the ip addresses.
        attribute :static_dns_records

        # @return [Object, nil] Subnet providing reachability for client facing virtual service ip.,Field deprecated in 17.1.1.
        attribute :subnet

        # @return [Object, nil] It represents subnet for the virtual service ip address allocation when auto_allocate_ip is true.it is only applicable in openstack or aws cloud.,This field is required if auto_allocate_ip is true.,Field deprecated in 17.1.1.
        attribute :subnet_uuid

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Server network or list of servers for cloning traffic.,It is a reference to an object of type trafficcloneprofile.,Field introduced in 17.1.1.
        attribute :traffic_clone_profile_ref

        # @return [Object, nil] Knob to enable the virtual service traffic on its assigned service engines.,This setting is effective only when the enabled flag is set to true.,Field introduced in 17.2.8.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :traffic_enabled

        # @return [String, nil] Specify if this is a normal virtual service, or if it is the parent or child of an sni-enabled virtual hosted virtual service.,Enum options - VS_TYPE_NORMAL, VS_TYPE_VH_PARENT, VS_TYPE_VH_CHILD.,Default value when not specified in API or module is interpreted by Avi Controller as VS_TYPE_NORMAL.
        attribute :type
        validates :type, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Use bridge ip as vip on each host in mesos deployments.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :use_bridge_ip_as_vip

        # @return [Object, nil] Use the virtual ip as the snat ip for health monitoring and sending traffic to the backend servers instead of the service engine interface ip.,The caveat of enabling this option is that the virtualservice cannot be configued in an active-active ha mode.,Dns based multi vip solution has to be used for ha & non-disruptive upgrade purposes.,Field introduced in 17.1.9,17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :use_vip_as_snat

        # @return [Object, nil] Uuid of the virtualservice.
        attribute :uuid

        # @return [Object, nil] The exact name requested from the client's sni-enabled tls hello domain name field.,If this is a match, the parent vs will forward the connection to this child vs.
        attribute :vh_domain_name

        # @return [Object, nil] Specifies the virtual service acting as virtual hosting (sni) parent.
        attribute :vh_parent_vs_uuid

        # @return [Object, nil] List of virtual service ips.,While creating a 'shared vs',please use vsvip_ref to point to the shared entities.,Field introduced in 17.1.1.
        attribute :vip

        # @return [Object, nil] Virtual routing context that the virtual service is bound to.,This is used to provide the isolation of the set of networks the application is attached to.,It is a reference to an object of type vrfcontext.
        attribute :vrf_context_ref

        # @return [Object, nil] Datascripts applied on the data traffic of the virtual service.
        attribute :vs_datascripts

        # @return [Object, nil] Mostly used during the creation of shared vs, this field refers to entities that can be shared across virtual services.,It is a reference to an object of type vsvip.,Field introduced in 17.1.1.
        attribute :vsvip_ref

        # @return [Object, nil] Waf policy for the virtual service.,It is a reference to an object of type wafpolicy.,Field introduced in 17.2.1.
        attribute :waf_policy_ref

        # @return [Object, nil] The quality of service weight to assign to traffic transmitted from this virtual service.,A higher weight will prioritize traffic versus other virtual services sharing the same service engines.,Allowed values are 1-128.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :weight
      end
    end
  end
end

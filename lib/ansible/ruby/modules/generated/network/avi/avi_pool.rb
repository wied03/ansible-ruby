# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Pool object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_pool < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Name of container cloud application that constitutes a pool in a a-b pool configuration, if different from vs app.
        attribute :a_pool

        # @return [Object, nil] A/b pool configuration.
        attribute :ab_pool

        # @return [Object, nil] Priority of this pool in a a-b pool pair.,Internally used.
        attribute :ab_priority

        # @return [Object, nil] Synchronize cisco apic epg members with pool servers.
        attribute :apic_epg_name

        # @return [Object, nil] Persistence will ensure the same user sticks to the same server for a desired duration of time.,It is a reference to an object of type applicationpersistenceprofile.
        attribute :application_persistence_profile_ref

        # @return [Object, nil] Reference to the launch configuration profile.,It is a reference to an object of type autoscalelaunchconfig.
        attribute :autoscale_launch_config_ref

        # @return [Object, nil] Network ids for the launch configuration.
        attribute :autoscale_networks

        # @return [Object, nil] Reference to server autoscale policy.,It is a reference to an object of type serverautoscalepolicy.
        attribute :autoscale_policy_ref

        # @return [Object, nil] Inline estimation of capacity of servers.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :capacity_estimation

        # @return [Object, nil] The maximum time-to-first-byte of a server.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :capacity_estimation_ttfb_thresh

        # @return [Object, nil] Checksum of cloud configuration for pool.,Internally set by cloud connector.
        attribute :cloud_config_cksum

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] Duration for which new connections will be gradually ramped up to a server recently brought online.,Useful for lb algorithms that are least connection based.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :connection_ramp_duration

        # @return [Object, nil] Creator name.
        attribute :created_by

        # @return [Object, nil] Traffic sent to servers will use this destination server port unless overridden by the server's specific port attribute.,The ssl checkbox enables avi to server encryption.,Default value when not specified in API or module is interpreted by Avi Controller as 80.
        attribute :default_server_port

        # @return [String, nil] A description of the pool.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Comma separated list of domain names which will be used to verify the common names or subject alternative names presented by server certificates.,It is performed only when common name check host_check_enabled is enabled.
        attribute :domain_name

        # @return [Object, nil] Inherited config from virtualservice.
        attribute :east_west

        # @return [Object, nil] Enable or disable the pool.,Disabling will terminate all open connections and pause health monitors.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enabled

        # @return [Object, nil] Enable an action - close connection, http redirect, local http response, or backup pool - when a pool failure happens.,By default, a connection will be closed, in case the pool experiences a failure.
        attribute :fail_action

        # @return [Object, nil] Periodicity of feedback for fewest tasks server selection algorithm.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :fewest_tasks_feedback_delay

        # @return [Object, nil] Used to gracefully disable a server.,Virtual service waits for the specified time before terminating the existing connections  to the servers that are disabled.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :graceful_disable_timeout

        # @return [Array<String>, String, nil] Verify server health by applying one or more health monitors.,Active monitors generate synthetic traffic from each service engine and mark a server up or down based on the response.,The passive monitor listens only to client to server communication.,It raises or lowers the ratio of traffic destined to a server based on successful responses.,It is a reference to an object of type healthmonitor.
        attribute :health_monitor_refs
        validates :health_monitor_refs, type: TypeGeneric.new(String)

        # @return [Object, nil] Enable common name check for server certificate.,If enabled and no explicit domain name is specified, avi will use the incoming host header to do the match.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :host_check_enabled

        # @return [Object, nil] The passive monitor will monitor client to server connections and requests and adjust traffic load to servers based on successful responses.,This may alter the expected behavior of the lb method, such as round robin.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :inline_health_monitor

        # @return [Object, nil] Use list of servers from ip address group.,It is a reference to an object of type ipaddrgroup.
        attribute :ipaddrgroup_ref

        # @return [Object, nil] The load balancing algorithm will pick a server within the pool's list of available servers.,Default value when not specified in API or module is interpreted by Avi Controller as LB_ALGORITHM_LEAST_CONNECTIONS.
        attribute :lb_algorithm

        # @return [Object, nil] Http header name to be used for the hash key.
        attribute :lb_algorithm_consistent_hash_hdr

        # @return [Object, nil] Criteria used as a key for determining the hash between the client and  server.,Default value when not specified in API or module is interpreted by Avi Controller as LB_ALGORITHM_CONSISTENT_HASH_SOURCE_IP_ADDRESS.
        attribute :lb_algorithm_hash

        # @return [Object, nil] The maximum number of concurrent connections allowed to each server within the pool.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :max_concurrent_connections_per_server

        # @return [Object, nil] Rate limit connections to each server.
        attribute :max_conn_rate_per_server

        # @return [String] The name of the pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] (internal-use) networks designated as containing servers for this pool.,The servers may be further narrowed down by a filter.,This field is used internally by avi, not editable by the user.
        attribute :networks

        # @return [Object, nil] Avi will validate the ssl certificate present by a server against the selected pki profile.,It is a reference to an object of type pkiprofile.
        attribute :pki_profile_ref

        # @return [Object, nil] Manually select the networks and subnets used to provide reachability to the pool's servers.,Specify the subnet using the following syntax  10-1-1-0/24.,Use static routes in vrf configuration when pool servers are not directly connected butroutable from the service engine.
        attribute :placement_networks

        # @return [Object, nil] Header name for custom header persistence.
        attribute :prst_hdr_name

        # @return [Object, nil] Minimum number of requests to be queued when pool is full.,Default value when not specified in API or module is interpreted by Avi Controller as 128.
        attribute :request_queue_depth

        # @return [Object, nil] Enable request queue when pool is full.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :request_queue_enabled

        # @return [Object, nil] Rewrite incoming host header to server name of the server to which the request is proxied.,Enabling this feature rewrites host header for requests to all servers in the pool.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :rewrite_host_header_to_server_name

        # @return [Object, nil] If sni server name is specified, rewrite incoming host header to the sni server name.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :rewrite_host_header_to_sni

        # @return [Object, nil] Server autoscale.,Not used anymore.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :server_auto_scale

        # @return [Object, nil] Number of server_count.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :server_count

        # @return [Object, nil] Fully qualified dns hostname which will be used in the tls sni extension in server connections if sni is enabled.,If no value is specified, avi will use the incoming host header instead.
        attribute :server_name

        # @return [Object, nil] Server reselect configuration for http requests.
        attribute :server_reselect

        # @return [Array<Hash>, Hash, nil] The pool directs load balanced traffic to this list of destination servers.,The servers can be configured by ip address, name, network or via ip address group.
        attribute :servers
        validates :servers, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Enable tls sni for server connections.,If disabled, avi will not send the sni extension as part of the handshake.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :sni_enabled

        # @return [Object, nil] Service engines will present a client ssl certificate to the server.,It is a reference to an object of type sslkeyandcertificate.
        attribute :ssl_key_and_certificate_ref

        # @return [Object, nil] When enabled, avi re-encrypts traffic to the backend servers.,The specific ssl profile defines which ciphers and ssl versions will be supported.,It is a reference to an object of type sslprofile.
        attribute :ssl_profile_ref

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Do not translate the client's destination port when sending the connection to the server.,The pool or servers specified service port will still be used for health monitoring.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :use_service_port

        # @return [Object, nil] Uuid of the pool.
        attribute :uuid

        # @return [Object, nil] Virtual routing context that the pool is bound to.,This is used to provide the isolation of the set of networks the pool is attached to.,The pool inherits the virtual routing conext of the virtual service, and this field is used only internally, and is set by pb-transform.,It is a reference to an object of type vrfcontext.
        attribute :vrf_ref
      end
    end
  end
end

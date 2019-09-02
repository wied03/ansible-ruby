# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure GslbService object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_gslbservice < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] The federated application persistence associated with gslbservice site persistence functionality.,It is a reference to an object of type applicationpersistenceprofile.,Field introduced in 17.2.1.
        attribute :application_persistence_profile_ref

        # @return [Symbol, nil] Gs member's overall health status is derived based on a combination of controller and datapath health-status inputs.,Note that the datapath status is determined by the association of health monitor profiles.,Only the controller provided status is determined through this configuration.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :controller_health_status_enabled
        validates :controller_health_status_enabled, type: Symbol

        # @return [Object, nil] Creator name.,Field introduced in 17.1.2.
        attribute :created_by

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Fully qualified domain name of the gslb service.
        attribute :domain_names

        # @return [Object, nil] Response to the client query when the gslb service is down.
        attribute :down_response

        # @return [Symbol, nil] Enable or disable the gslb service.,If the gslb service is enabled, then the vips are sent in the dns responses based on reachability and configured algorithm.,If the gslb service is disabled, then the vips are no longer available in the dns response.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Object, nil] Select list of pools belonging to this gslb service.
        attribute :groups

        # @return [Object, nil] Verify vs health by applying one or more health monitors.,Active monitors generate synthetic traffic from dns service engine and to mark a vs up or down based on the response.,It is a reference to an object of type healthmonitor.
        attribute :health_monitor_refs

        # @return [Object, nil] Health monitor probe can be executed for all the members or it can be executed only for third-party members.,This operational mode is useful to reduce the number of health monitor probes in case of a hybrid scenario.,In such a case, avi members can have controller derived status while non-avi members can be probed by via health monitor probes in dataplane.,Enum options - GSLB_SERVICE_HEALTH_MONITOR_ALL_MEMBERS, GSLB_SERVICE_HEALTH_MONITOR_ONLY_NON_AVI_MEMBERS.,Default value when not specified in API or module is interpreted by Avi Controller as GSLB_SERVICE_HEALTH_MONITOR_ALL_MEMBERS.
        attribute :health_monitor_scope

        # @return [Symbol, nil] This field indicates that this object is replicated across gslb federation.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :is_federated
        validates :is_federated, type: Symbol

        # @return [Object, nil] The minimum number of members to distribute traffic to.,Allowed values are 1-65535.,Special values are 0 - 'disable'.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :min_members

        # @return [String] Name for the gslb service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Number of ip addresses of this gslb service to be returned by the dns service.,Enter 0 to return all ip addresses.,Allowed values are 1-20.,Special values are 0- 'return all ip addresses'.
        attribute :num_dns_ip

        # @return [Object, nil] The load balancing algorithm will pick a gslb pool within the gslb service list of available pools.,Enum options - GSLB_SERVICE_ALGORITHM_PRIORITY, GSLB_SERVICE_ALGORITHM_GEO.,Field introduced in 17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as GSLB_SERVICE_ALGORITHM_PRIORITY.
        attribute :pool_algorithm

        # @return [Symbol, nil] Enable site-persistence for the gslbservice.,Field introduced in 17.2.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :site_persistence_enabled
        validates :site_persistence_enabled, type: Symbol

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Ttl value (in seconds) for records served for this gslb service by the dns service.,Allowed values are 1-86400.,Units(SEC).
        attribute :ttl

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Symbol, nil] Use the client ip subnet from the edns option as source ipaddress for client geo-location and consistent hash algorithm.,Default is true.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :use_edns_client_subnet
        validates :use_edns_client_subnet, type: Symbol

        # @return [Object, nil] Uuid of the gslb service.
        attribute :uuid

        # @return [Symbol, nil] Enable wild-card match of fqdn  if an exact match is not found in the dns table, the longest match is chosen by wild-carding the fqdn in the dns,request.,Default is false.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :wildcard_match
        validates :wildcard_match, type: Symbol
      end
    end
  end
end

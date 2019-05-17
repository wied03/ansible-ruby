# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Gslb object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_gslb < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Max retries after which the remote site is treated as a fresh start.,In fresh start all the configs are downloaded.,Allowed values are 1-1024.,Default value when not specified in API or module is interpreted by Avi Controller as 20.
        attribute :clear_on_max_retries

        # @return [Object, nil] Group to specify if the client ip addresses are public or private.,Field introduced in 17.1.2.
        attribute :client_ip_addr_group

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Sub domain configuration for the gslb.,Gslb service's fqdn must be a match one of these subdomains.
        attribute :dns_configs

        # @return [Symbol, nil] This field indicates that this object is replicated across gslb federation.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :is_federated
        validates :is_federated, type: Symbol

        # @return [Object] Mark this site as leader of gslb configuration.,This site is the one among the avi sites.
        attribute :leader_cluster_uuid
        validates :leader_cluster_uuid, presence: true

        # @return [Symbol, nil] This field disables the configuration operations on the leader for all federated objects.,Cud operations on gslb, gslbservice, gslbgeodbprofile and other federated objects will be rejected.,The rest-api disabling helps in upgrade scenarios where we don't want configuration sync operations to the gslb member when the member is being,upgraded.,This configuration programmatically blocks the leader from accepting new gslb configuration when member sites are undergoing upgrade.,Field introduced in 17.2.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :maintenance_mode
        validates :maintenance_mode, type: Symbol

        # @return [String] Name for the gslb object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Frequency with which group members communicate.,Allowed values are 1-3600.,Default value when not specified in API or module is interpreted by Avi Controller as 15.,Units(SEC).
        attribute :send_interval

        # @return [Object, nil] Select avi site member belonging to this gslb.
        attribute :sites

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Third party site member belonging to this gslb.,Field introduced in 17.1.1.
        attribute :third_party_sites

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the gslb object.
        attribute :uuid

        # @return [Object, nil] The view-id is used in change-leader mode to differentiate partitioned groups while they have the same gslb namespace.,Each partitioned group will be able to operate independently by using the view-id.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :view_id
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ApplicationPersistenceProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_applicationpersistenceprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Specifies the application cookie persistence profile parameters.
        attribute :app_cookie_persistence_profile

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Specifies the custom http header persistence profile parameters.
        attribute :hdr_persistence_profile

        # @return [Hash, nil] Specifies the http cookie persistence profile parameters.
        attribute :http_cookie_persistence_profile
        validates :http_cookie_persistence_profile, type: Hash

        # @return [Object, nil] Specifies the client ip persistence profile parameters.
        attribute :ip_persistence_profile

        # @return [Symbol, nil] This field describes the object's replication scope.,If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.,If the field is set to true, then the object is replicated across the federation.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :is_federated
        validates :is_federated, type: Symbol

        # @return [String] A user-friendly name for the persistence profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Method used to persist clients to the same server for a duration of time or a session.,Enum options - PERSISTENCE_TYPE_CLIENT_IP_ADDRESS, PERSISTENCE_TYPE_HTTP_COOKIE, PERSISTENCE_TYPE_TLS, PERSISTENCE_TYPE_CLIENT_IPV6_ADDRESS,,PERSISTENCE_TYPE_CUSTOM_HTTP_HEADER, PERSISTENCE_TYPE_APP_COOKIE, PERSISTENCE_TYPE_GSLB_SITE.,Default value when not specified in API or module is interpreted by Avi Controller as PERSISTENCE_TYPE_CLIENT_IP_ADDRESS.
        attribute :persistence_type
        validates :persistence_type, presence: true, type: String

        # @return [String, nil] Specifies behavior when a persistent server has been marked down by a health monitor.,Enum options - HM_DOWN_PICK_NEW_SERVER, HM_DOWN_ABORT_CONNECTION, HM_DOWN_CONTINUE_PERSISTENT_SERVER.,Default value when not specified in API or module is interpreted by Avi Controller as HM_DOWN_PICK_NEW_SERVER.
        attribute :server_hm_down_recovery
        validates :server_hm_down_recovery, type: String

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the persistence profile.
        attribute :uuid
      end
    end
  end
end

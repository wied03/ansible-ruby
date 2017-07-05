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

        # @return [String] A user-friendly name for the persistence profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Method used to persist clients to the same server for a duration of time or a session.,Default value when not specified in API or module is interpreted by Avi Controller as PERSISTENCE_TYPE_CLIENT_IP_ADDRESS.
        attribute :persistence_type
        validates :persistence_type, presence: true, type: String

        # @return [String, nil] Specifies behavior when a persistent server has been marked down by a health monitor.,Default value when not specified in API or module is interpreted by Avi Controller as HM_DOWN_PICK_NEW_SERVER.
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

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ApplicationProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_applicationprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Specifies various dns service related controls for virtual service.
        attribute :dns_service_profile

        # @return [Object, nil] Specifies various security related controls for virtual service.
        attribute :dos_rl_profile

        # @return [Hash, nil] Specifies the http application proxy profile parameters.
        attribute :http_profile
        validates :http_profile, type: Hash

        # @return [String] The name of the application profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies if client ip needs to be preserved for backend connection.,Not compatible with connection multiplexing.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :preserve_client_ip

        # @return [Object, nil] Specifies the tcp application proxy profile parameters.
        attribute :tcp_app_profile

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [String] Specifies which application layer proxy is enabled for the virtual service.
        attribute :type
        validates :type, presence: true, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the application profile.
        attribute :uuid
      end
    end
  end
end

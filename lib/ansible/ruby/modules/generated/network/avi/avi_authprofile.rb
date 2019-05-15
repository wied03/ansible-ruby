# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure AuthProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_authprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Hash, nil] Http user authentication params.
        attribute :http
        validates :http, type: Hash

        # @return [Hash, nil] Ldap server and directory settings.
        attribute :ldap
        validates :ldap, type: Hash

        # @return [String] Name of the auth profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Saml settings.,Field introduced in 17.2.3.
        attribute :saml

        # @return [Object, nil] Tacacs+ settings.
        attribute :tacacs_plus

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [String] Type of the auth profile.,Enum options - AUTH_PROFILE_LDAP, AUTH_PROFILE_TACACS_PLUS, AUTH_PROFILE_SAML.
        attribute :type
        validates :type, presence: true, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the auth profile.
        attribute :uuid
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the administration of Keycloak client templates via the Keycloak REST API. It requires access to the REST API via OpenID Connect; the user connecting and the client being used must have the requisite access rights. In a default Keycloak installation, admin-cli and an admin user would work, as would a separate client definition with the scope tailored to your needs and a user having the expected roles.
      # The names of module options are snake_cased versions of the camelCase ones found in the Keycloak API and its documentation at U(http://www.keycloak.org/docs-api/3.3/rest-api/)
      # The Keycloak API does not always enforce for only sensible settings to be used -- you can set SAML-specific settings on an OpenID Connect client for instance and vice versa. Be careful. If you do not specify a setting, usually a sensible default is chosen.
      class Keycloak_clienttemplate < Base
        # @return [:present, :absent, nil] State of the client template,On C(present), the client template will be created (or updated if it exists already).,On C(absent), the client template will be removed if it exists
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Id of client template to be worked on. This is usually a UUID.
        attribute :id
        validates :id, type: String

        # @return [String, nil] Realm this client template is found in.
        attribute :realm
        validates :realm, type: String

        # @return [String, nil] Name of the client template
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Description of the client template in Keycloak
        attribute :description

        # @return [:"openid-connect", :saml, nil] Type of client template (either C(openid-connect) or C(saml).
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:"openid-connect", :saml], :message=>"%{value} needs to be :\"openid-connect\", :saml"}, allow_nil: true

        # @return [Boolean, nil] Is the "Full Scope Allowed" feature set for this client template or not. This is 'fullScopeAllowed' in the Keycloak REST API.
        attribute :full_scope_allowed
        validates :full_scope_allowed, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] a list of dicts defining protocol mappers for this client template. This is 'protocolMappers' in the Keycloak REST API.
        attribute :protocol_mappers
        validates :protocol_mappers, type: TypeGeneric.new(Hash)

        # @return [Object, nil] A dict of further attributes for this client template. This can contain various configuration settings, though in the default installation of Keycloak as of 3.4, none are documented or known, so this is usually empty.
        attribute :attributes
      end
    end
  end
end

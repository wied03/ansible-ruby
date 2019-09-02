# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the administration of Keycloak clients via the Keycloak REST API. It requires access to the REST API via OpenID Connect; the user connecting and the client being used must have the requisite access rights. In a default Keycloak installation, admin-cli and an admin user would work, as would a separate client definition with the scope tailored to your needs and a user having the expected roles.
      # The names of module options are snake_cased versions of the camelCase ones found in the Keycloak API and its documentation at U(http://www.keycloak.org/docs-api/3.3/rest-api/). Aliases are provided so camelCased versions can be used as well.
      # The Keycloak API does not always enforce for only sensible settings to be used -- you can set SAML-specific settings on an OpenID Connect client for instance and vice versa. Be careful. If you do not specify a setting, usually a sensible default is chosen.
      class Keycloak_client < Base
        # @return [:present, :absent, nil] State of the client,On C(present), the client will be created (or updated if it exists already).,On C(absent), the client will be removed if it exists
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The realm to create the client in.
        attribute :realm
        validates :realm, type: String

        # @return [String, nil] Client id of client to be worked on. This is usually an alphanumeric name chosen by you. Either this or I(id) is required. If you specify both, I(id) takes precedence. This is 'clientId' in the Keycloak REST API.
        attribute :client_id
        validates :client_id, type: String

        # @return [String, nil] Id of client to be worked on. This is usually an UUID. Either this or I(client_id) is required. If you specify both, this takes precedence.
        attribute :id
        validates :id, type: String

        # @return [String, nil] Name of the client (this is not the same as I(client_id))
        attribute :name
        validates :name, type: String

        # @return [String, nil] Description of the client in Keycloak
        attribute :description
        validates :description, type: String

        # @return [String, nil] Root URL appended to relative URLs for this client This is 'rootUrl' in the Keycloak REST API.
        attribute :root_url
        validates :root_url, type: String

        # @return [String, nil] URL to the admin interface of the client This is 'adminUrl' in the Keycloak REST API.
        attribute :admin_url
        validates :admin_url, type: String

        # @return [String, nil] Default URL to use when the auth server needs to redirect or link back to the client This is 'baseUrl' in the Keycloak REST API.
        attribute :base_url
        validates :base_url, type: String

        # @return [Boolean, nil] Is this client enabled or not?
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:"client-secret", :"client-jwt", nil] How do clients authenticate with the auth server? Either C(client-secret) or C(client-jwt) can be chosen. When using C(client-secret), the module parameter I(secret) can set it, while for C(client-jwt), you can use the keys C(use.jwks.url), C(jwks.url), and C(jwt.credential.certificate) in the I(attributes) module parameter to configure its behavior. This is 'clientAuthenticatorType' in the Keycloak REST API.
        attribute :client_authenticator_type
        validates :client_authenticator_type, expression_inclusion: {:in=>[:"client-secret", :"client-jwt"], :message=>"%{value} needs to be :\"client-secret\", :\"client-jwt\""}, allow_nil: true

        # @return [String, nil] When using I(client_authenticator_type) C(client-secret) (the default), you can specify a secret here (otherwise one will be generated if it does not exit). If changing this secret, the module will not register a change currently (but the changed secret will be saved).
        attribute :secret
        validates :secret, type: String

        # @return [String, nil] The registration access token provides access for clients to the client registration service. This is 'registrationAccessToken' in the Keycloak REST API.
        attribute :registration_access_token
        validates :registration_access_token, type: String

        # @return [Array<String>, String, nil] list of default roles for this client. If the client roles referenced do not exist yet, they will be created. This is 'defaultRoles' in the Keycloak REST API.
        attribute :default_roles
        validates :default_roles, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Acceptable redirect URIs for this client. This is 'redirectUris' in the Keycloak REST API.
        attribute :redirect_uris
        validates :redirect_uris, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of allowed CORS origins. This is 'webOrigins' in the Keycloak REST API.
        attribute :web_origins
        validates :web_origins, type: TypeGeneric.new(String)

        # @return [Integer, nil] Revoke any tokens issued before this date for this client (this is a UNIX timestamp). This is 'notBefore' in the Keycloak REST API.
        attribute :not_before
        validates :not_before, type: Integer

        # @return [Boolean, nil] The access type of this client is bearer-only. This is 'bearerOnly' in the Keycloak REST API.
        attribute :bearer_only
        validates :bearer_only, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If enabled, users have to consent to client access. This is 'consentRequired' in the Keycloak REST API.
        attribute :consent_required
        validates :consent_required, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable standard flow for this client or not (OpenID connect). This is 'standardFlowEnabled' in the Keycloak REST API.
        attribute :standard_flow_enabled
        validates :standard_flow_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable implicit flow for this client or not (OpenID connect). This is 'implictFlowEnabled' in the Keycloak REST API.
        attribute :implicit_flow_enabled
        validates :implicit_flow_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Are direct access grants enabled for this client or not (OpenID connect). This is 'directAccessGrantsEnabled' in the Keycloak REST API.
        attribute :direct_access_grants_enabled
        validates :direct_access_grants_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Are service accounts enabled for this client or not (OpenID connect). This is 'serviceAccountsEnabled' in the Keycloak REST API.
        attribute :service_accounts_enabled
        validates :service_accounts_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Are authorization services enabled for this client or not (OpenID connect). This is 'authorizationServicesEnabled' in the Keycloak REST API.
        attribute :authorization_services_enabled
        validates :authorization_services_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Is the access type for this client public or not. This is 'publicClient' in the Keycloak REST API.
        attribute :public_client
        validates :public_client, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Is frontchannel logout enabled for this client or not. This is 'frontchannelLogout' in the Keycloak REST API.
        attribute :frontchannel_logout
        validates :frontchannel_logout, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:"openid-connect", :saml, nil] Type of client (either C(openid-connect) or C(saml).
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:"openid-connect", :saml], :message=>"%{value} needs to be :\"openid-connect\", :saml"}, allow_nil: true

        # @return [Boolean, nil] Is the "Full Scope Allowed" feature set for this client or not. This is 'fullScopeAllowed' in the Keycloak REST API.
        attribute :full_scope_allowed
        validates :full_scope_allowed, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Cluster node re-registration timeout for this client. This is 'nodeReRegistrationTimeout' in the Keycloak REST API.
        attribute :node_re_registration_timeout
        validates :node_re_registration_timeout, type: Integer

        # @return [Hash, nil] dict of registered cluster nodes (with C(nodename) as the key and last registration time as the value). This is 'registeredNodes' in the Keycloak REST API.
        attribute :registered_nodes
        validates :registered_nodes, type: Hash

        # @return [String, nil] Client template to use for this client. If it does not exist this field will silently be dropped. This is 'clientTemplate' in the Keycloak REST API.
        attribute :client_template
        validates :client_template, type: String

        # @return [Boolean, nil] Whether or not to use configuration from the I(client_template). This is 'useTemplateConfig' in the Keycloak REST API.
        attribute :use_template_config
        validates :use_template_config, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether or not to use scope configuration from the I(client_template). This is 'useTemplateScope' in the Keycloak REST API.
        attribute :use_template_scope
        validates :use_template_scope, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether or not to use mapper configuration from the I(client_template). This is 'useTemplateMappers' in the Keycloak REST API.
        attribute :use_template_mappers
        validates :use_template_mappers, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether or not surrogate auth is required. This is 'surrogateAuthRequired' in the Keycloak REST API.
        attribute :surrogate_auth_required
        validates :surrogate_auth_required, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] a data structure defining the authorization settings for this client. For reference, please see the Keycloak API docs at U(http://www.keycloak.org/docs-api/3.3/rest-api/index.html#_resourceserverrepresentation). This is 'authorizationSettings' in the Keycloak REST API.
        attribute :authorization_settings

        # @return [Array<Hash>, Hash, nil] a list of dicts defining protocol mappers for this client. This is 'protocolMappers' in the Keycloak REST API.
        attribute :protocol_mappers
        validates :protocol_mappers, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] A dict of further attributes for this client. This can contain various configuration settings; an example is given in the examples section. While an exhaustive list of permissible options is not available; possible options as of Keycloak 3.4 are listed below. The Keycloak API does not validate whether a given option is appropriate for the protocol used; if specified anyway, Keycloak will simply not use it.
        attribute :attributes
        validates :attributes, type: Hash
      end
    end
  end
end

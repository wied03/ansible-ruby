# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure SystemConfiguration object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_systemconfiguration < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Adminauthconfiguration settings for systemconfiguration.
        attribute :admin_auth_configuration

        # @return [Object, nil] Specifies the default license tier which would be used by new clouds.,Enum options - ENTERPRISE_16, ENTERPRISE_18.,Field introduced in 17.2.5.,Default value when not specified in API or module is interpreted by Avi Controller as ENTERPRISE_18.
        attribute :default_license_tier

        # @return [Object, nil] Dnsconfiguration settings for systemconfiguration.
        attribute :dns_configuration

        # @return [Object, nil] Dns virtualservices hosting fqdn records for applications across avi vantage.,If no virtualservices are provided, avi vantage will provide dns services for configured applications.,Switching back to avi vantage from dns virtualservices is not allowed.,It is a reference to an object of type virtualservice.
        attribute :dns_virtualservice_refs

        # @return [Symbol, nil] Boolean flag to set docker_mode.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :docker_mode
        validates :docker_mode, type: Symbol

        # @return [Object, nil] Emailconfiguration settings for systemconfiguration.
        attribute :email_configuration

        # @return [Object, nil] Tenantconfiguration settings for systemconfiguration.
        attribute :global_tenant_config

        # @return [Object, nil] Linuxconfiguration settings for systemconfiguration.
        attribute :linux_configuration

        # @return [Object, nil] Configure ip access control for controller to restrict open access.
        attribute :mgmt_ip_access_control

        # @return [Object, nil] Ntpconfiguration settings for systemconfiguration.
        attribute :ntp_configuration

        # @return [Object, nil] Portalconfiguration settings for systemconfiguration.
        attribute :portal_configuration

        # @return [Object, nil] Proxyconfiguration settings for systemconfiguration.
        attribute :proxy_configuration

        # @return [Object, nil] Snmpconfiguration settings for systemconfiguration.
        attribute :snmp_configuration

        # @return [Object, nil] Allowed ciphers list for ssh to the management interface on the controller and service engines.,If this is not specified, all the default ciphers are allowed.,Ssh -q cipher provides the list of default ciphers supported.
        attribute :ssh_ciphers

        # @return [Object, nil] Allowed hmac list for ssh to the management interface on the controller and service engines.,If this is not specified, all the default hmacs are allowed.,Ssh -q mac provides the list of default hmacs supported.
        attribute :ssh_hmacs

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end

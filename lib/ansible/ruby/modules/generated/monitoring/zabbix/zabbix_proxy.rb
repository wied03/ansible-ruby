# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to create, modify, get and delete Zabbix proxy entries.
      class Zabbix_proxy < Base
        # @return [String] Name of the proxy in Zabbix.
        attribute :proxy_name
        validates :proxy_name, presence: true, type: String

        # @return [String, nil] Description of the proxy..
        attribute :description
        validates :description, type: String

        # @return [:active, :passive, nil] Type of proxy. (4 - active, 5 - passive)
        attribute :status
        validates :status, inclusion: {:in=>[:active, :passive], :message=>"%{value} needs to be :active, :passive"}, allow_nil: true

        # @return [:no_encryption, :PSK, :certificate, nil] Connections to proxy.
        attribute :tls_connect
        validates :tls_connect, inclusion: {:in=>[:no_encryption, :PSK, :certificate], :message=>"%{value} needs to be :no_encryption, :PSK, :certificate"}, allow_nil: true

        # @return [:no_encryption, :PSK, :certificate, nil] Connections from proxy.
        attribute :tls_accept
        validates :tls_accept, inclusion: {:in=>[:no_encryption, :PSK, :certificate], :message=>"%{value} needs to be :no_encryption, :PSK, :certificate"}, allow_nil: true

        # @return [Object, nil] Certificate issuer.
        attribute :tls_issuer

        # @return [Object, nil] Certificate subject.
        attribute :tls_subject

        # @return [Object, nil] PSK identity. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.
        attribute :tls_psk_identity

        # @return [Object, nil] The preshared key, at least 32 hex digits. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.
        attribute :tls_psk

        # @return [:present, :absent, nil] State of the proxy.,On C(present), it will create if proxy does not exist or update the proxy if the associated data is different.,On C(absent) will remove a proxy if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Dictionary with params for the interface when proxy is in passive mode,Available values are: dns, ip, main, port, type and useip.,Please review the interface documentation for more information on the supported properties,U(https://www.zabbix.com/documentation/3.2/manual/api/reference/proxy/object#proxy_interface)
        attribute :interface
      end
    end
  end
end

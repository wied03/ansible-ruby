# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to create, modify and delete Zabbix host entries and associated group and template data.
      class Zabbix_host < Base
        # @return [String] Name of the host in Zabbix.,host_name is the unique identifier used and cannot be updated using this module.
        attribute :host_name
        validates :host_name, presence: true, type: String

        # @return [String, nil] Visible name of the host in Zabbix.
        attribute :visible_name
        validates :visible_name, type: String

        # @return [String, nil] Description of the host in Zabbix.
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] List of host groups the host is part of.
        attribute :host_groups
        validates :host_groups, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of templates linked to the host.
        attribute :link_templates
        validates :link_templates, type: TypeGeneric.new(String)

        # @return [:automatic, :manual, :disabled, nil] Configure the inventory mode.
        attribute :inventory_mode
        validates :inventory_mode, expression_inclusion: {:in=>[:automatic, :manual, :disabled], :message=>"%{value} needs to be :automatic, :manual, :disabled"}, allow_nil: true

        # @return [Hash, nil] Add Facts for a zabbix inventory (e.g. Tag) (see example below).,Please review the interface documentation for more information on the supported properties,https://www.zabbix.com/documentation/3.2/manual/api/reference/host/object#host_inventory
        attribute :inventory_zabbix
        validates :inventory_zabbix, type: Hash

        # @return [:enabled, :disabled, nil] Monitoring status of the host.
        attribute :status
        validates :status, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:present, :absent, nil] State of the host.,On C(present), it will create if host does not exist or update the host if the associated data is different.,On C(absent) will remove a host if it exists.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the Zabbix proxy to be used.
        attribute :proxy
        validates :proxy, type: String

        # @return [Object, nil] List of interfaces to be created for the host (see example below).,Available keys are: I(dns), I(ip), I(main), I(port), I(type), I(useip), and I(bulk).,Please review the interface documentation for more information on the supported properties,https://www.zabbix.com/documentation/2.0/manual/appendix/api/hostinterface/definitions#host_interface,If an interface definition is incomplete, this module will attempt to fill in sensible values.,I(type) can also be C(agent), C(snmp), C(ipmi), or C(jmx) instead of its numerical value.
        attribute :interfaces

        # @return [Integer, nil] Specifies what encryption to use for outgoing connections.,Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).,Works only with >= Zabbix 3.0
        attribute :tls_connect
        validates :tls_connect, type: Integer

        # @return [Integer, nil] Specifies what types of connections are allowed for incoming connections.,The tls_accept parameter accepts values of 1 to 7,Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).,Values can be combined.,Works only with >= Zabbix 3.0
        attribute :tls_accept
        validates :tls_accept, type: Integer

        # @return [String, nil] It is a unique name by which this specific PSK is referred to by Zabbix components,Do not put sensitive information in the PSK identity string, it is transmitted over the network unencrypted.,Works only with >= Zabbix 3.0
        attribute :tls_psk_identity
        validates :tls_psk_identity, type: String

        # @return [String, nil] PSK value is a hard to guess string of hexadecimal digits.,The preshared key, at least 32 hex digits. Required if either tls_connect or tls_accept has PSK enabled.,Works only with >= Zabbix 3.0
        attribute :tls_psk
        validates :tls_psk, type: String

        # @return [Object, nil] Required certificate issuer.,Works only with >= Zabbix 3.0
        attribute :tls_issuer

        # @return [Object, nil] Required certificate subject.,Works only with >= Zabbix 3.0
        attribute :tls_subject

        # @return [Integer, nil] IPMI authentication algorithm.,Please review the Host object documentation for more information on the supported properties,https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object,Possible values are, C(0) (none), C(1) (MD2), C(2) (MD5), C(4) (straight), C(5) (OEM), C(6) (RMCP+), with -1 being the API default.,Please note that the Zabbix API will treat absent settings as default when updating any of the I(ipmi_)-options; this means that if you attempt to set any of the four options individually, the rest will be reset to default values.
        attribute :ipmi_authtype
        validates :ipmi_authtype, type: Integer

        # @return [Integer, nil] IPMI privilege level.,Please review the Host object documentation for more information on the supported properties,https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object,Possible values are C(1) (callback), C(2) (user), C(3) (operator), C(4) (admin), C(5) (OEM), with C(2) being the API default.,also see the last note in the I(ipmi_authtype) documentation
        attribute :ipmi_privilege
        validates :ipmi_privilege, type: Integer

        # @return [String, nil] IPMI username.,also see the last note in the I(ipmi_authtype) documentation
        attribute :ipmi_username
        validates :ipmi_username, type: String

        # @return [String, nil] IPMI password.,also see the last note in the I(ipmi_authtype) documentation
        attribute :ipmi_password
        validates :ipmi_password, type: String

        # @return [:yes, :no, nil] Overwrite the host configuration, even if already present.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

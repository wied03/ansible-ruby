# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of node system attributes on Cisco NXOS devices.  It provides an option to configure host system parameters or remove those parameters from the device active configuration.
      class Nxos_system < Base
        # @return [String, nil] Configure the device hostname parameter. This option takes an ASCII string value or keyword 'default'
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] Configures the default domain name suffix to be used when referencing this node by its FQDN.  This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Object, nil] Enables or disables the DNS lookup feature in Cisco NXOS.  This argument accepts boolean values.  When enabled, the system will try to resolve hostnames using DNS and when disabled, hostnames will not be resolved.
        attribute :domain_lookup

        # @return [Object, nil] Configures a list of domain name suffixes to search when performing DNS name resolution. This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.
        attribute :domain_search

        # @return [Array<String>, String, nil] List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers or a list of hashes that configure the name server and VRF name or keyword 'default'. See examples.
        attribute :name_servers
        validates :name_servers, type: TypeGeneric.new(String, Hash)

        # @return [Object, nil] Specifies the mtu, must be an integer or keyword 'default'.
        attribute :system_mtu

        # @return [:present, :absent, nil] State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

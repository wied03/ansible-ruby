# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of node system attributes on Cisco IOS XR devices. It provides an option to configure host system parameters or remove those parameters from the device active configuration.
      class Iosxr_system < Base
        # @return [String, nil] Configure the device hostname parameter. This option takes an ASCII string value.
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] VRF name for domain services
        attribute :vrf
        validates :vrf, type: String

        # @return [String, nil] Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Object, nil] Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.
        attribute :domain_search

        # @return [String, nil] The C(lookup_source) argument provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) must be a valid interface configured on the device.
        attribute :lookup_source
        validates :lookup_source, type: String

        # @return [Boolean, nil] Provides administrative control for enabling or disabling DNS lookups.  When this argument is set to True, lookups are performed and when it is set to False, lookups are not performed.
        attribute :lookup_enabled
        validates :lookup_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] The C(name_serves) argument accepts a list of DNS name servers by way of either FQDN or IP address to use to perform name resolution lookups.  This argument accepts wither a list of DNS servers See examples.
        attribute :name_servers
        validates :name_servers, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

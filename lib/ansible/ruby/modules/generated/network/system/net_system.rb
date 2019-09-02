# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of node system attributes on network devices.  It provides an option to configure host system parameters or remove those parameters from the device active configuration.
      class Net_system < Base
        # @return [String, nil] Configure the device hostname parameter. This option takes an ASCII string value.
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Object, nil] Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.
        attribute :domain_search

        # @return [String, nil] Provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) must be a valid interface configured on the device.
        attribute :lookup_source
        validates :lookup_source, type: String

        # @return [Array<String>, String, nil] List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers See examples.
        attribute :name_servers
        validates :name_servers, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

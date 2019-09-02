# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of node system attributes on Arista EOS devices.  It provides an option to configure host system parameters or remove those parameters from the device active configuration.
      class Eos_system < Base
        # @return [String, nil] Configure the device hostname parameter. This option takes an ASCII string value.
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Object, nil] Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.
        attribute :domain_search

        # @return [String, Array<Hash>, Hash, nil] Provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) can only exist in a single VRF.  This argument accepts either a list of interface names or a list of hashes that configure the interface name and VRF name.  See examples.
        attribute :lookup_source
        validates :lookup_source, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers or a list of hashes that configure the name server and VRF name.  See examples.
        attribute :name_servers
        validates :name_servers, type: TypeGeneric.new(String, Hash)

        # @return [:present, :absent, nil] State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

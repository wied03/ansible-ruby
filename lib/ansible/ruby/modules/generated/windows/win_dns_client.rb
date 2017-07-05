# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(win_dns_client) module configures the DNS client on Windows network adapters.
      class Win_dns_client < Base
        # @return [String] Adapter name or list of adapter names for which to manage DNS settings ('*' is supported as a wildcard value). The adapter name used is the connection caption in the Network Control Panel or via C(Get-NetAdapter), eg C(Local Area Connection).
        attribute :adapter_names
        validates :adapter_names, presence: true, type: String

        # @return [Array<String>, String] Single or ordered list of DNS server IPv4 addresses to configure for lookup. An empty list will configure the adapter to use the DHCP-assigned values on connections where DHCP is enabled, or disable DNS lookup on statically-configured connections.
        attribute :ipv4_addresses
        validates :ipv4_addresses, presence: true, type: TypeGeneric.new(String, NilClass)
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages the AFM address lists on a BIG-IP. This module can be used to add and remove address list entries.
      class Bigip_firewall_address_list < Base
        # @return [String] Specifies the name of the address list.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Description of the address list
        attribute :description

        # @return [Object, nil] List of geolocations specified by their C(country) and C(region).
        attribute :geo_locations

        # @return [Array<String>, String, nil] Individual addresses that you want to add to the list. These addresses differ from ranges, and lists of lists such as what can be used in C(address_ranges) and C(address_lists) respectively.,This list can also include networks that have CIDR notation.
        attribute :addresses
        validates :addresses, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of address ranges where the range starts with a port number, is followed by a dash (-) and then a second number.,If the first address is greater than the second number, the numbers will be reversed so-as to be properly formatted. ie, C(2.2.2.2-1.1.1). would become C(1.1.1.1-2.2.2.2).
        attribute :address_ranges

        # @return [Object, nil] Simple list of existing address lists to add to this list. Address lists can be specified in either their fully qualified name (/Common/foo) or their short name (foo). If a short name is used, the C(partition) argument will automatically be prepended to the short name.
        attribute :address_lists

        # @return [Object, nil] A list of fully qualified domain names (FQDNs).,An FQDN has at least one decimal point in it, separating the host from the domain.,To add FQDNs to a list requires that a global FQDN resolver be configured. At the moment, this must either be done via C(bigip_command), or, in the GUI of BIG-IP. If using C(bigip_command), this can be done with C(tmsh modify security firewall global-fqdn-policy FOO) where C(FOO) is a DNS resolver configured at C(tmsh create net dns-resolver FOO).
        attribute :fqdns

        # @return [:present, :absent, nil] When C(present), ensures that the address list and entries exists.,When C(absent), ensures the address list is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, edit, query, or delete VLANs in a Meraki environment.
      class Meraki_vlan < Base
        # @return [:absent, :present, :query, nil] Specifies whether object should be queried, created/modified, or removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] Name of network which VLAN is in or should be in.
        attribute :net_name
        validates :net_name, type: String

        # @return [Object, nil] ID of network which VLAN is in or should be in.
        attribute :net_id

        # @return [Integer, nil] ID number of VLAN.,ID should be between 1-4096.
        attribute :vlan_id
        validates :vlan_id, type: Integer

        # @return [String, nil] Name of VLAN.
        attribute :name
        validates :name, type: String

        # @return [String, nil] CIDR notation of network subnet.
        attribute :subnet
        validates :subnet, type: String

        # @return [String, nil] IP address of appliance.,Address must be within subnet specified in C(subnet) parameter.
        attribute :appliance_ip
        validates :appliance_ip, type: String

        # @return [String, nil] Semi-colon delimited list of DNS IP addresses.,Specify one of the following options for preprogrammed DNS entries opendns, google_dns, upstream_dns
        attribute :dns_nameservers
        validates :dns_nameservers, type: String

        # @return [Array<Hash>, Hash, nil] IP address ranges which should be reserve and not distributed via DHCP.
        attribute :reserved_ip_range
        validates :reserved_ip_range, type: TypeGeneric.new(Hash)

        # @return [Object, nil] The translated VPN subnet if VPN and VPN subnet translation are enabled on the VLAN.
        attribute :vpn_nat_subnet

        # @return [Array<Hash>, Hash, nil] Static IP address assignements to be distributed via DHCP by MAC address.
        attribute :fixed_ip_assignments
        validates :fixed_ip_assignments, type: TypeGeneric.new(Hash)
      end
    end
  end
end

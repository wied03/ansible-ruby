# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, modifies, and deletes VPN connections. Idempotence is achieved by using the filters option or specifying the VPN connection identifier.
      class Ec2_vpc_vpn < Base
        # @return [:present, :absent, nil] The desired state of the VPN connection.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The ID of the customer gateway.
        attribute :customer_gateway_id
        validates :customer_gateway_id, type: String

        # @return [:"ipsec.1", nil] The type of VPN connection.
        attribute :connection_type
        validates :connection_type, inclusion: {:in=>[:"ipsec.1"], :message=>"%{value} needs to be :\"ipsec.1\""}, allow_nil: true

        # @return [String, nil] The ID of the virtual private gateway.
        attribute :vpn_gateway_id
        validates :vpn_gateway_id, type: String

        # @return [String, nil] The ID of the VPN connection. Required to modify or delete a connection if the filters option does not provide a unique match.
        attribute :vpn_connection_id
        validates :vpn_connection_id, type: String

        # @return [Hash, nil] Tags to attach to the VPN connection.
        attribute :tags
        validates :tags, type: Hash

        # @return [Symbol, nil] Whether or not to delete VPN connections tags that are associated with the connection but not specified in the task.
        attribute :purge_tags
        validates :purge_tags, type: Symbol

        # @return [Boolean, nil] Indicates whether the VPN connection uses static routes only. Static routes must be used for devices that don't support BGP.
        attribute :static_only
        validates :static_only, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] An optional list object containing no more than two dict members, each of which may contain 'TunnelInsideCidr' and/or 'PreSharedKey' keys with appropriate string values.  AWS defaults will apply in absence of either of the aforementioned keys.
        attribute :tunnel_options
        validates :tunnel_options, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] An alternative to using vpn_connection_id. If multiple matches are found, vpn_connection_id is required. If one of the following suboptions is a list of items to filter by, only one item needs to match to find the VPN that correlates. e.g. if the filter 'cidr' is ['194.168.2.0/24', '192.168.2.0/24'] and the VPN route only has the destination cidr block of '192.168.2.0/24' it will be found with this filter (assuming there are not multiple VPNs that are matched). Another example, if the filter 'vpn' is equal to ['vpn-ccf7e7ad', 'vpn-cb0ae2a2'] and one of of the VPNs has the state deleted (exists but is unmodifiable) and the other exists and is not deleted, it will be found via this filter. See examples.
        attribute :filters
        validates :filters, type: Hash

        # @return [Array<String>, String, nil] Routes to add to the connection.
        attribute :routes
        validates :routes, type: TypeGeneric.new(String, NilClass)

        # @return [Boolean, nil] Whether or not to delete VPN connections routes that are not specified in the task.
        attribute :purge_routes
        validates :purge_routes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

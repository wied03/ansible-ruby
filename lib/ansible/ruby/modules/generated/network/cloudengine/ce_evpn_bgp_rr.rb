# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure an RR in BGP-EVPN address family view on HUAWEI CloudEngine switches.
      class Ce_evpn_bgp_rr < Base
        # @return [Object] Specifies the number of the AS, in integer format. The value is an integer that ranges from 1 to 4294967295.
        attribute :as_number
        validates :as_number, presence: true

        # @return [Object, nil] Specifies the name of a BGP instance. The value of instance-name can be an integer 1 or a string of 1 to 31.
        attribute :bgp_instance

        # @return [:enable, :disable, nil] Enable or disable the BGP-EVPN address family.
        attribute :bgp_evpn_enable
        validates :bgp_evpn_enable, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:group_name, :ipv4_address, nil] Specify the peer type.
        attribute :peer_type
        validates :peer_type, expression_inclusion: {:in=>[:group_name, :ipv4_address], :message=>"%{value} needs to be :group_name, :ipv4_address"}, allow_nil: true

        # @return [Object, nil] Specifies the IPv4 address or the group name of a peer.
        attribute :peer

        # @return [:enable, :disable, nil] Configure the local device as the route reflector and the peer or peer group as the client of the route reflector.
        attribute :reflect_client
        validates :reflect_client, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Enable or disable the VPN-Target filtering.
        attribute :policy_vpn_target
        validates :policy_vpn_target, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true
      end
    end
  end
end

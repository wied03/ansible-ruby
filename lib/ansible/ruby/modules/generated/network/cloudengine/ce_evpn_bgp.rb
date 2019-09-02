# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module offers the ability to configure a BGP EVPN peer relationship on HUAWEI CloudEngine switches.
      class Ce_evpn_bgp < Base
        # @return [Object] Name of a BGP instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.
        attribute :bgp_instance
        validates :bgp_instance, presence: true

        # @return [Object, nil] Specifies integral AS number. The value is an integer ranging from 1 to 4294967295.
        attribute :as_number

        # @return [Object, nil] Specifies the IPv4 address of a BGP EVPN peer. The value is in dotted decimal notation.
        attribute :peer_address

        # @return [Object, nil] Specify the name of a peer group that BGP peers need to join. The value is a string of 1 to 47 case-sensitive characters, spaces not supported.
        attribute :peer_group_name

        # @return [:true, :false, nil] Enable or disable a BGP device to exchange routes with a specified peer or peer group in the address family view.
        attribute :peer_enable
        validates :peer_enable, expression_inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:arp, :irb, nil] Configures a device to advertise routes to its BGP EVPN peers.
        attribute :advertise_router_type
        validates :advertise_router_type, expression_inclusion: {:in=>[:arp, :irb], :message=>"%{value} needs to be :arp, :irb"}, allow_nil: true

        # @return [Object, nil] Associates a specified VPN instance with the IPv4 address family. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.
        attribute :vpn_name

        # @return [:enable, :disable, nil] Enable or disable a device to advertise IP routes imported to a VPN instance to its EVPN instance.
        attribute :advertise_l2vpn_evpn
        validates :advertise_l2vpn_evpn, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

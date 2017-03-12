# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP address-family's neighbors configurations on NX-OS switches.
      class Nxos_bgp_neighbor_af < Base
        # @return [Integer] BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.
        attribute :asn
        validates :asn, presence: true, type: Integer

        # @return [String, nil] Name of the VRF. The name 'default' is a valid VRF representing the global bgp.
        attribute :vrf
        validates :vrf, type: String

        # @return [String] Neighbor Identifier. Valid values are string. Neighbors may use IPv4 or IPv6 notation, with or without prefix length.
        attribute :neighbor
        validates :neighbor, presence: true, type: String

        # @return [:ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn] Address Family Identifier.
        attribute :afi
        validates :afi, presence: true, inclusion: {:in=>[:ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn], :message=>"%{value} needs to be :ipv4, :ipv6, :vpnv4, :vpnv6, :l2vpn"}

        # @return [:unicast, :multicast, :evpn] Sub Address Family Identifier.
        attribute :safi
        validates :safi, presence: true, inclusion: {:in=>[:unicast, :multicast, :evpn], :message=>"%{value} needs to be :unicast, :multicast, :evpn"}

        # @return [:enable, :disable, :inherit, nil] Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).
        attribute :additional_paths_receive
        validates :additional_paths_receive, inclusion: {:in=>[:enable, :disable, :inherit], :message=>"%{value} needs to be :enable, :disable, :inherit"}, allow_nil: true

        # @return [:enable, :disable, :inherit, nil] Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).
        attribute :additional_paths_send
        validates :additional_paths_send, inclusion: {:in=>[:enable, :disable, :inherit], :message=>"%{value} needs to be :enable, :disable, :inherit"}, allow_nil: true

        # @return [Object, nil] Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_exist_map']. This command is mutually exclusive with the advertise_map_non_exist property.
        attribute :advertise_map_exist

        # @return [Object, nil] Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the non-exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_non_exist_map']. This command is mutually exclusive with the advertise_map_exist property.
        attribute :advertise_map_non_exist

        # @return [Object, nil] Activate allowas-in property
        attribute :allowas_in

        # @return [Object, nil] Optional max-occurrences value for allowas_in. Valid values are an integer value or 'default'. Can be used independently or in conjunction with allowas_in.
        attribute :allowas_in_max

        # @return [:true, :false, nil] Activate the as-override feature.
        attribute :as_override
        validates :as_override, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Activate the default-originate feature.
        attribute :default_originate
        validates :default_originate, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Optional route-map for the default_originate property. Can be used independently or in conjunction with C(default_originate). Valid values are a string defining a route-map name, or 'default'.
        attribute :default_originate_route_map

        # @return [Object, nil] Valid values are a string defining a filter-list name, or 'default'.
        attribute :filter_list_in

        # @return [Object, nil] Valid values are a string defining a filter-list name, or 'default'.
        attribute :filter_list_out

        # @return [Object, nil] maximum-prefix limit value. Valid values are an integer value or 'default'.
        attribute :max_prefix_limit

        # @return [Object, nil] Optional restart interval. Valid values are an integer. Requires max_prefix_limit.
        attribute :max_prefix_interval

        # @return [Object, nil] Optional threshold percentage at which to generate a warning. Valid values are an integer value. Requires max_prefix_limit.
        attribute :max_prefix_threshold

        # @return [:true, :false, nil] Optional warning-only keyword. Requires max_prefix_limit.
        attribute :max_prefix_warning
        validates :max_prefix_warning, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Activate the next-hop-self feature.
        attribute :next_hop_self
        validates :next_hop_self, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Activate the next-hop-third-party feature.
        attribute :next_hop_third_party
        validates :next_hop_third_party, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Valid values are a string defining a prefix-list name, or 'default'.
        attribute :prefix_list_in

        # @return [Object, nil] Valid values are a string defining a prefix-list name, or 'default'.
        attribute :prefix_list_out

        # @return [Object, nil] Valid values are a string defining a route-map name, or 'default'.
        attribute :route_map_in

        # @return [Object, nil] Valid values are a string defining a route-map name, or 'default'.
        attribute :route_map_out

        # @return [:true, :false, nil] Router reflector client.
        attribute :route_reflector_client
        validates :route_reflector_client, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:none, :both, :extended, :standard, :default, nil] send-community attribute.
        attribute :send_community
        validates :send_community, inclusion: {:in=>[:none, :both, :extended, :standard, :default], :message=>"%{value} needs to be :none, :both, :extended, :standard, :default"}, allow_nil: true

        # @return [:enable, :always, :inherit, nil] Valid values are 'enable' for basic command enablement; 'always' to add the always keyword to the basic command; and 'inherit' to remove the command at this level (the command value is inherited from a higher BGP layer).
        attribute :soft_reconfiguration_in
        validates :soft_reconfiguration_in, inclusion: {:in=>[:enable, :always, :inherit], :message=>"%{value} needs to be :enable, :always, :inherit"}, allow_nil: true

        # @return [Object, nil] Site-of-origin. Valid values are a string defining a VPN extcommunity or 'default'.
        attribute :soo

        # @return [:true, :false, :default, nil] suppress-inactive feature.
        attribute :suppress_inactive
        validates :suppress_inactive, inclusion: {:in=>[:true, :false, :default], :message=>"%{value} needs to be :true, :false, :default"}, allow_nil: true

        # @return [Object, nil] unsuppress-map. Valid values are a string defining a route-map name or 'default'.
        attribute :unsuppress_map

        # @return [Object, nil] Weight value. Valid values are an integer value or 'default'.
        attribute :weight

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

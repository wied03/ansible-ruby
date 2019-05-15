# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configuring Centralized All-Active Gateways or Distributed Gateway for the VXLAN Network on HUAWEI CloudEngine devices.
      class Ce_vxlan_gateway < Base
        # @return [Object, nil] Specifies the ID of a DFS group. The value must be 1.
        attribute :dfs_id

        # @return [Object, nil] Specifies the IPv4 address bound to a DFS group. The value is in dotted decimal notation.
        attribute :dfs_source_ip

        # @return [Object, nil] Specifies the name of a VPN instance bound to a DFS group. The value is a string of 1 to 31 case-sensitive characters without spaces. If the character string is quoted by double quotation marks, the character string can contain spaces. The value C(_public_) is reserved and cannot be used as the VPN instance name.
        attribute :dfs_source_vpn

        # @return [Object, nil] Specifies the UDP port number of the DFS group. The value is an integer that ranges from 1025 to 65535.
        attribute :dfs_udp_port

        # @return [:enable, :disable, nil] Creates all-active gateways.
        attribute :dfs_all_active
        validates :dfs_all_active, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Configure the IP address of an all-active gateway peer. The value is in dotted decimal notation.
        attribute :dfs_peer_ip

        # @return [Object, nil] Specifies the name of the VPN instance that is associated with all-active gateway peer. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.
        attribute :dfs_peer_vpn

        # @return [Object, nil] Specifies the name of a VPN instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.
        attribute :vpn_instance

        # @return [Object, nil] Specifies a VNI ID. Binds a VXLAN network identifier (VNI) to a virtual private network (VPN) instance. The value is an integer ranging from 1 to 16000000.
        attribute :vpn_vni

        # @return [Object, nil] Full name of VBDIF interface, i.e. Vbdif100.
        attribute :vbdif_name

        # @return [Object, nil] Specifies the name of the VPN instance that is associated with the interface. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.
        attribute :vbdif_bind_vpn

        # @return [Object, nil] Specifies a MAC address for a VBDIF interface. The value is in the format of H-H-H. Each H is a 4-digit hexadecimal number, such as C(00e0) or C(fc01). If an H contains less than four digits, 0s are added ahead. For example,  C(e0) is equal to C(00e0). A MAC address cannot be all 0s or 1s or a multicast MAC address.
        attribute :vbdif_mac

        # @return [:enable, :disable, nil] Enable the distributed gateway function on VBDIF interface.
        attribute :arp_distribute_gateway
        validates :arp_distribute_gateway, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Enable VLINK direct route on VBDIF interface.
        attribute :arp_direct_route
        validates :arp_direct_route, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

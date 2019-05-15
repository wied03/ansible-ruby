# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure NetStream flow statistics exporting and versions for exported packets on HUAWEI CloudEngine switches.
      class Ce_netstream_export < Base
        # @return [:ip, :vxlan] Specifies NetStream feature.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:ip, :vxlan], :message=>"%{value} needs to be :ip, :vxlan"}

        # @return [Object, nil] Specifies source address which can be IPv6 or IPv4 of the exported NetStream packet.
        attribute :source_ip

        # @return [Object, nil] Specifies destination address which can be IPv6 or IPv4 of the exported NetStream packet.
        attribute :host_ip

        # @return [Object, nil] Specifies the destination UDP port number of the exported packets. The value is an integer that ranges from 1 to 65535.
        attribute :host_port

        # @return [Object, nil] Specifies the VPN instance of the exported packets carrying flow statistics. Ensure the VPN instance has been created on the device.
        attribute :host_vpn

        # @return [5, 9, nil] Sets the version of exported packets.
        attribute :version
        validates :version, inclusion: {:in=>[5, 9], :message=>"%{value} needs to be 5, 9"}, allow_nil: true

        # @return [:origin, :peer, nil] Specifies the AS number recorded in the statistics as the original or the peer AS number.
        attribute :as_option
        validates :as_option, inclusion: {:in=>[:origin, :peer], :message=>"%{value} needs to be :origin, :peer"}, allow_nil: true

        # @return [:enable, :disable, nil] Configures the statistics to carry BGP next hop information. Currently, only V9 supports the exported packets carrying BGP next hop information.
        attribute :bgp_nexthop
        validates :bgp_nexthop, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

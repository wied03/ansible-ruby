# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP peer configurations on HUAWEI CloudEngine switches.
      class Ce_bgp_neighbor < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created.
        attribute :vrf_name
        validates :vrf_name, presence: true

        # @return [Object] Connection address of a peer, which can be an IPv4 or IPv6 address.
        attribute :peer_addr
        validates :peer_addr, presence: true

        # @return [Object] AS number of a peer. The value is a string of 1 to 11 characters.
        attribute :remote_as
        validates :remote_as, presence: true

        # @return [Object, nil] Description of a peer, which can be letters or digits. The value is a string of 1 to 80 characters.
        attribute :description

        # @return [Object, nil] Fake AS number that is specified for a local peer. The value is a string of 1 to 11 characters.
        attribute :fake_as

        # @return [:no_use, :true, :false, nil] If the value is true, the EBGP peer can use either a fake AS number or the actual AS number. If the value is false, the EBGP peer can only use a fake AS number.
        attribute :dual_as
        validates :dual_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the router has all extended capabilities. If the value is false, the router does not have all extended capabilities.
        attribute :conventional
        validates :conventional, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, BGP is enabled to advertise REFRESH packets. If the value is false, the route refresh function is enabled.
        attribute :route_refresh
        validates :route_refresh, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the session with a specified peer is torn down and all related routing entries are cleared. If the value is false, the session with a specified peer is retained.
        attribute :is_ignore
        validates :is_ignore, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Name of a source interface that sends BGP packets. The value is a string of 1 to 63 characters.
        attribute :local_if_name

        # @return [Object, nil] Maximum number of hops in an indirect EBGP connection. The value is an ranging from 1 to 255.
        attribute :ebgp_max_hop

        # @return [Object, nil] Enable GTSM on a peer or peer group. The valid-TTL-Value parameter is used to specify the number of TTL hops to be detected. The value is an integer ranging from 1 to 255.
        attribute :valid_ttl_hops

        # @return [Object, nil] The value can be Connect-only, Listen-only, or Both.
        attribute :connect_mode

        # @return [:no_use, :true, :false, nil] If the value is true, BGP is enabled to record peer session status and event information. If the value is false, BGP is disabled from recording peer session status and event information.
        attribute :is_log_change
        validates :is_log_change, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:null, :cipher, :simple, nil] Enable BGP peers to establish a TCP connection and perform the Message Digest 5 (MD5) authentication for BGP messages.
        attribute :pswd_type
        validates :pswd_type, expression_inclusion: {:in=>[:null, :cipher, :simple], :message=>"%{value} needs to be :null, :cipher, :simple"}, allow_nil: true

        # @return [Object, nil] The character string in a password identifies the contents of the password, spaces not supported. The value is a string of 1 to 255 characters.
        attribute :pswd_cipher_text

        # @return [Object, nil] Specify the Keepalive time of a peer or peer group. The value is an integer ranging from 0 to 21845. The default value is 60.
        attribute :keep_alive_time

        # @return [Object, nil] Specify the Hold time of a peer or peer group. The value is 0 or an integer ranging from 3 to 65535.
        attribute :hold_time

        # @return [Object, nil] Specify the Min hold time of a peer or peer group.
        attribute :min_hold_time

        # @return [Object, nil] Specify the Keychain authentication name used when BGP peers establish a TCP connection. The value is a string of 1 to 47 case-insensitive characters.
        attribute :key_chain_name

        # @return [Object, nil] ConnectRetry interval. The value is an integer ranging from 1 to 65535.
        attribute :conn_retry_time

        # @return [Object, nil] Maximum TCP MSS value used for TCP connection establishment for a peer. The value is an integer ranging from 176 to 4096.
        attribute :tcp_MSS

        # @return [:no_use, :true, :false, nil] If the value is true, peer create MPLS Local IFNET disable. If the value is false, peer create MPLS Local IFNET enable.
        attribute :mpls_local_ifnet_disable
        validates :mpls_local_ifnet_disable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Add the global AS number to the Update packets to be advertised.
        attribute :prepend_global_as
        validates :prepend_global_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Add the Fake AS number to received Update packets.
        attribute :prepend_fake_as
        validates :prepend_fake_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, peers are enabled to inherit the BFD function from the peer group. If the value is false, peers are disabled to inherit the BFD function from the peer group.
        attribute :is_bfd_block
        validates :is_bfd_block, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the detection multiplier. The default value is 3. The value is an integer ranging from 3 to 50.
        attribute :multiplier

        # @return [:no_use, :true, :false, nil] If the value is true, BFD is enabled. If the value is false, BFD is disabled.
        attribute :is_bfd_enable
        validates :is_bfd_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify the minimum interval at which BFD packets are received. The value is an integer ranging from 50 to 1000, in milliseconds.
        attribute :rx_interval

        # @return [Object, nil] Specify the minimum interval at which BFD packets are sent. The value is an integer ranging from 50 to 1000, in milliseconds.
        attribute :tx_interval

        # @return [:no_use, :true, :false, nil] If the value is true, the system is enabled to preferentially use the single-hop mode for BFD session setup between IBGP peers. If the value is false, the system is disabled from preferentially using the single-hop mode for BFD session setup between IBGP peers.
        attribute :is_single_hop
        validates :is_single_hop, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true
      end
    end
  end
end

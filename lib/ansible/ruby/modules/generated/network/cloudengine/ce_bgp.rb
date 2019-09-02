# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP configurations on HUAWEI CloudEngine switches.
      class Ce_bgp < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Local AS number. The value is a string of 1 to 11 characters.
        attribute :as_number

        # @return [:no_use, :true, :false, nil] Enable GR of the BGP speaker in the specified address family, peer address, or peer group.
        attribute :graceful_restart
        validates :graceful_restart, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Period of waiting for the End-Of-RIB flag. The value is an integer ranging from 3 to 3000. The default value is 600.
        attribute :time_wait_for_rib

        # @return [Object, nil] Maximum number of AS numbers in the AS_Path attribute. The default value is 255.
        attribute :as_path_limit

        # @return [:no_use, :true, :false, nil] Check the first AS in the AS_Path of the update messages from EBGP peers.
        attribute :check_first_as
        validates :check_first_as, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Confederation ID. The value is a string of 1 to 11 characters.
        attribute :confed_id_number

        # @return [:no_use, :true, :false, nil] Configure the device to be compatible with devices in a nonstandard confederation.
        attribute :confed_nonstanded
        validates :confed_nonstanded, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] The function to automatically select router IDs for all VPN BGP instances is enabled.
        attribute :bgp_rid_auto_sel
        validates :bgp_rid_auto_sel, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] If the value is true, the system stores all route update messages received from all peers (groups) after BGP connection setup. If the value is false, the system stores only BGP update messages that are received from peers and pass the configured import policy.
        attribute :keep_all_routes
        validates :keep_all_routes, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Support BGP RIB memory protection.
        attribute :memory_limit
        validates :memory_limit, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Peer disconnection through GR.
        attribute :gr_peer_reset
        validates :gr_peer_reset, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Interrupt BGP all neighbor.
        attribute :is_shutdown
        validates :is_shutdown, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Suppress interval.
        attribute :suppress_interval

        # @return [Object, nil] Hold interval.
        attribute :hold_interval

        # @return [Object, nil] Clear interval.
        attribute :clear_interval

        # @return [Object, nil] Confederation AS number, in two-byte or four-byte format. The value is a string of 1 to 11 characters.
        attribute :confed_peer_as_num

        # @return [Object, nil] Name of a BGP instance. The name is a case-sensitive string of characters.
        attribute :vrf_name

        # @return [:no_use, :true, :false, nil] If the value is true, VPN BGP instances are enabled to automatically select router IDs. If the value is false, VPN BGP instances are disabled from automatically selecting router IDs.
        attribute :vrf_rid_auto_sel
        validates :vrf_rid_auto_sel, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] ID of a router that is in IPv4 address format.
        attribute :router_id

        # @return [Object, nil] If the value of a timer changes, the BGP peer relationship between the routers is disconnected. The value is an integer ranging from 0 to 21845. The default value is 60.
        attribute :keepalive_time

        # @return [Object, nil] Hold time, in seconds. The value of the hold time can be 0 or range from 3 to 65535.
        attribute :hold_time

        # @return [Object, nil] Min hold time, in seconds. The value of the hold time can be 0 or range from 20 to 65535.
        attribute :min_hold_time

        # @return [Object, nil] ConnectRetry interval. The value is an integer, in seconds. The default value is 32s.
        attribute :conn_retry_time

        # @return [:no_use, :true, :false, nil] If the value is true, After the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are deleted immediately when the interface goes Down. If the value is  false, After the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are not deleted immediately when the interface goes Down.
        attribute :ebgp_if_sensitive
        validates :ebgp_if_sensitive, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:ipv4uni, :ipv6uni, nil] Type of a created address family, which can be IPv4 unicast or IPv6 unicast. The default type is IPv4 unicast.
        attribute :default_af_type
        validates :default_af_type, expression_inclusion: {:in=>[:ipv4uni, :ipv6uni], :message=>"%{value} needs to be :ipv4uni, :ipv6uni"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages ARP attributes of VXLAN on HUAWEI CloudEngine devices.
      class Ce_vxlan_arp < Base
        # @return [:enable, :disable, nil] Enables EVN BGP.
        attribute :evn_bgp
        validates :evn_bgp, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Specifies the source address of an EVN BGP peer. The value is in dotted decimal notation.
        attribute :evn_source_ip

        # @return [Object, nil] Specifies the IP address of an EVN BGP peer. The value is in dotted decimal notation.
        attribute :evn_peer_ip

        # @return [:enable, :disable, nil] Configures the local device as the router reflector (RR) on the EVN network.
        attribute :evn_server
        validates :evn_server, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Configures the local device as the route reflector (RR) and its peer as the client.
        attribute :evn_reflect_client
        validates :evn_reflect_client, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Full name of VBDIF interface, i.e. Vbdif100.
        attribute :vbdif_name

        # @return [:enable, :disable, nil] Enables EVN BGP or BGP EVPN to collect host information.
        attribute :arp_collect_host
        validates :arp_collect_host, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:bgp, :none, nil] Enables EVN BGP or BGP EVPN to advertise host information.
        attribute :host_collect_protocol
        validates :host_collect_protocol, inclusion: {:in=>[:bgp, :none], :message=>"%{value} needs to be :bgp, :none"}, allow_nil: true

        # @return [Object, nil] Specifies a BD(bridge domain) ID. The value is an integer ranging from 1 to 16777215.
        attribute :bridge_domain_id

        # @return [:enable, :disable, nil] Enables ARP broadcast suppression in a BD.
        attribute :arp_suppress
        validates :arp_suppress, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

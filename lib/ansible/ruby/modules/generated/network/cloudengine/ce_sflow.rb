# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure Sampled Flow (sFlow) to monitor traffic on an interface in real time, detect abnormal traffic, and locate the source of attack traffic, ensuring stable running of the network.
      class Ce_sflow < Base
        # @return [Object, nil] Specifies the IPv4/IPv6 address of an sFlow agent.
        attribute :agent_ip

        # @return [Object, nil] Specifies the source IPv4/IPv6 address of sFlow packets.
        attribute :source_ip

        # @return [1, 2, nil] Specifies the ID of an sFlow collector. This ID is used when you specify the collector in subsequent sFlow configuration.
        attribute :collector_id
        validates :collector_id, expression_inclusion: {:in=>[1, 2], :message=>"%{value} needs to be 1, 2"}, allow_nil: true

        # @return [Object, nil] Specifies the IPv4/IPv6 address of the sFlow collector.
        attribute :collector_ip

        # @return [Object, nil] Specifies the name of a VPN instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.
        attribute :collector_ip_vpn

        # @return [Object, nil] Specifies the maximum length of sFlow packets sent from an sFlow agent to an sFlow collector. The value is an integer, in bytes. It ranges from 1024 to 8100. The default value is 1400.
        attribute :collector_datagram_size

        # @return [Object, nil] Specifies the UDP destination port number of sFlow packets. The value is an integer that ranges from 1 to 65535. The default value is 6343.
        attribute :collector_udp_port

        # @return [:meth, :enhanced, nil] Configures the device to send sFlow packets through service interfaces, enhancing the sFlow packet forwarding capability. The enhanced parameter is optional. No matter whether you configure the enhanced mode, the switch determines to send sFlow packets through service cards or management port based on the routing information on the collector. When the value is meth, the device forwards sFlow packets at the control plane. When the value is enhanced, the device forwards sFlow packets at the forwarding plane to enhance the sFlow packet forwarding capacity.
        attribute :collector_meth
        validates :collector_meth, expression_inclusion: {:in=>[:meth, :enhanced], :message=>"%{value} needs to be :meth, :enhanced"}, allow_nil: true

        # @return [Object, nil] Specifies the description of an sFlow collector. The value is a string of 1 to 255 case-sensitive characters without spaces.
        attribute :collector_description

        # @return [Object, nil] Full name of interface for Flow Sampling or Counter. It must be a physical interface, Eth-Trunk, or Layer 2 subinterface.
        attribute :sflow_interface

        # @return [Object, nil] Indicates the ID list of the collector.
        attribute :sample_collector

        # @return [Object, nil] Specifies the flow sampling rate in the format 1/rate. The value is an integer and ranges from 1 to 4294967295. The default value is 8192.
        attribute :sample_rate

        # @return [Object, nil] Specifies the maximum length of sampled packets. The value is an integer and ranges from 18 to 512, in bytes. The default value is 128.
        attribute :sample_length

        # @return [:inbound, :outbound, :both, nil] Enables flow sampling in the inbound or outbound direction.
        attribute :sample_direction
        validates :sample_direction, expression_inclusion: {:in=>[:inbound, :outbound, :both], :message=>"%{value} needs to be :inbound, :outbound, :both"}, allow_nil: true

        # @return [Object, nil] Indicates the ID list of the counter collector.
        attribute :counter_collector

        # @return [Object, nil] Indicates the counter sampling interval. The value is an integer that ranges from 10 to 4294967295, in seconds. The default value is 20.
        attribute :counter_interval

        # @return [:enable, :disable, nil] Configures the sFlow packets sent by the switch not to carry routing information.
        attribute :export_route
        validates :export_route, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Specifies the rate of sFlow packets sent from a card to the control plane. The value is an integer that ranges from 100 to 1500, in pps.
        attribute :rate_limit

        # @return [Object, nil] Specifies the slot where the rate of output sFlow packets is limited. If this parameter is not specified, the rate of sFlow packets sent from all cards to the control plane is limited. The value is an integer or a string of characters.
        attribute :rate_limit_slot

        # @return [Object, nil] Enable the Embedded Network Processor (ENP) chip function. The switch uses the ENP chip to perform sFlow sampling, and the maximum sFlow sampling interval is 65535. If you set the sampling interval to be larger than 65535, the switch automatically restores it to 65535. The value is an integer or 'all'.
        attribute :forward_enp_slot

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

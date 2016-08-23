# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nmcli < Base
        # @return [:present, :absent] Whether the device should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:yes, :no, nil] Whether the connection should start on boot.,Whether the connection profile can be automatically activated
        attribute :autoconnect
        validates :autoconnect, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Where conn_name will be the name used to call the connection. when not provided a default name is generated: <type>[-<ifname>][-<num>]
        attribute :conn_name
        validates :conn_name, presence: true

        # @return [String] Where IFNAME will be the what we call the interface name.,interface to bind the connection to. The connection will only be applicable to this interface name.,A special value of "*" can be used for interface-independent connections.,The ifname argument is mandatory for all connection types except bond, team, bridge and vlan.
        attribute :ifname
        validates :ifname, type: String

        # @return [:ethernet, :team, :"team-slave", :bond, :"bond-slave", :bridge, :vlan, nil] This is the type of device or network connection that you wish to create.
        attribute :type
        validates :type, inclusion: {:in=>[:ethernet, :team, :"team-slave", :bond, :"bond-slave", :bridge, :vlan], :message=>"%{value} needs to be :ethernet, :team, :\"team-slave\", :bond, :\"bond-slave\", :bridge, :vlan"}, allow_nil: true

        # @return [:"balance-rr", :"active-backup", :"balance-xor", :broadcast, :"802.3ad", :"balance-tlb", :"balance-alb", nil] This is the type of device or network connection that you wish to create for a bond, team or bridge.
        attribute :mode
        validates :mode, inclusion: {:in=>[:"balance-rr", :"active-backup", :"balance-xor", :broadcast, :"802.3ad", :"balance-tlb", :"balance-alb"], :message=>"%{value} needs to be :\"balance-rr\", :\"active-backup\", :\"balance-xor\", :broadcast, :\"802.3ad\", :\"balance-tlb\", :\"balance-alb\""}, allow_nil: true

        # @return [String] master <master (ifname, or connection UUID or conn_name) of bridge, team, bond master connection profile.
        attribute :master
        validates :master, type: String

        # @return [String] The IPv4 address to this interface using this format ie: "192.168.1.24/24"
        attribute :ip4
        validates :ip4, type: String

        # @return [Object] The IPv4 gateway for this interface using this format ie: "192.168.100.1"
        attribute :gw4

        # @return [String] A list of upto 3 dns servers, ipv4 format e.g. To add two IPv4 DNS server addresses: ["8.8.8.8 8.8.4.4"]
        attribute :dns4
        validates :dns4, type: String

        # @return [String] The IPv6 address to this interface using this format ie: "abbe::cafe"
        attribute :ip6
        validates :ip6, type: String

        # @return [String] The IPv6 gateway for this interface using this format ie: "2001:db8::1"
        attribute :gw6
        validates :gw6, type: String

        # @return [Object] A list of upto 3 dns servers, ipv6 format e.g. To add two IPv6 DNS server addresses: ["2001:4860:4860::8888 2001:4860:4860::8844"]
        attribute :dns6

        # @return [Fixnum] The connection MTU, e.g. 9000. This can't be applied when creating the interface and is done once the interface has been created.,Can be used when modifying Team, VLAN, Ethernet (Future plans to implement wifi, pppoe, infiniband)
        attribute :mtu
        validates :mtu, type: Fixnum

        # @return [String] This is only used with bond and is the primary interface name (for "active-backup" mode), this is the usually the 'ifname'
        attribute :primary
        validates :primary, type: String

        # @return [Fixnum] This is only used with bond - miimon
        attribute :miimon
        validates :miimon, type: Fixnum

        # @return [String] This is only used with bond - downdelay
        attribute :downdelay
        validates :downdelay, type: String

        # @return [String] This is only used with bond - updelay
        attribute :updelay
        validates :updelay, type: String

        # @return [String] This is only used with bond - ARP interval
        attribute :arp_interval
        validates :arp_interval, type: String

        # @return [String] This is only used with bond - ARP IP target
        attribute :arp_ip_target
        validates :arp_ip_target, type: String

        # @return [String] This is only used with bridge and controls whether Spanning Tree Protocol (STP) is enabled for this bridge
        attribute :stp
        validates :stp, type: String

        # @return [Fixnum] This is only used with 'bridge' - sets STP priority
        attribute :priority
        validates :priority, type: Fixnum

        # @return [Fixnum] This is only used with bridge - [forward-delay <2-30>] STP forwarding delay, in seconds
        attribute :forwarddelay
        validates :forwarddelay, type: Fixnum

        # @return [Fixnum] This is only used with bridge - [hello-time <1-10>] STP hello time, in seconds
        attribute :hellotime
        validates :hellotime, type: Fixnum

        # @return [Fixnum] This is only used with bridge - [max-age <6-42>] STP maximum message age, in seconds
        attribute :maxage
        validates :maxage, type: Fixnum

        # @return [Fixnum] This is only used with bridge - [ageing-time <0-1000000>] the Ethernet MAC address aging time, in seconds
        attribute :ageingtime
        validates :ageingtime, type: Fixnum

        # @return [String] This is only used with bridge - MAC address of the bridge (note: this requires a recent kernel feature, originally introduced in 3.15 upstream kernel)
        attribute :mac
        validates :mac, type: String

        # @return [Fixnum] This is only used with 'bridge-slave' - [<0-63>] - STP priority of this slave
        attribute :slavepriority
        validates :slavepriority, type: Fixnum

        # @return [Fixnum] This is only used with 'bridge-slave' - [<1-65535>] - STP port cost for destinations via this slave
        attribute :path_cost
        validates :path_cost, type: Fixnum

        # @return [TrueClass] This is only used with 'bridge-slave' - 'hairpin mode' for the slave, which allows frames to be sent back out through the slave the frame was received on.
        attribute :hairpin
        validates :hairpin, type: TrueClass

        # @return [String] This is only used with VLAN - VLAN ID in range <0-4095>
        attribute :vlanid
        validates :vlanid, type: String

        # @return [String] This is only used with VLAN - parent device this VLAN is on, can use ifname
        attribute :vlandev
        validates :vlandev, type: String

        # @return [String] This is only used with VLAN - flags
        attribute :flags
        validates :flags, type: String

        # @return [String] This is only used with VLAN - VLAN ingress priority mapping
        attribute :ingress
        validates :ingress, type: String

        # @return [String] This is only used with VLAN - VLAN egress priority mapping
        attribute :egress
        validates :egress, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP traps configurations on HUAWEI CloudEngine switches.
      class Ce_snmp_traps < Base
        # @return [:aaa, :arp, :bfd, :bgp, :cfg, :configuration, :dad, :devm, :dhcpsnp, :dldp, :driver, :efm, :erps, :"error-down", :fcoe, :fei, :fei_comm, :fm, :ifnet, :info, :ipsg, :ipv6, :isis, :l3vpn, :lacp, :lcs, :ldm, :ldp, :ldt, :lldp, :mpls_lspm, :msdp, :mstp, :nd, :netconf, :nqa, :nvo3, :openflow, :ospf, :ospfv3, :pim, :"pim-std", :qos, :radius, :rm, :rmon, :securitytrap, :smlktrap, :snmp, :ssh, :stackmng, :sysclock, :sysom, :system, :tcp, :telnet, :trill, :trunk, :tty, :vbst, :vfs, :"virtual-perception", :vrrp, :vstm, :all, nil] Alarm feature name.
        attribute :feature_name
        validates :feature_name, inclusion: {:in=>[:aaa, :arp, :bfd, :bgp, :cfg, :configuration, :dad, :devm, :dhcpsnp, :dldp, :driver, :efm, :erps, :"error-down", :fcoe, :fei, :fei_comm, :fm, :ifnet, :info, :ipsg, :ipv6, :isis, :l3vpn, :lacp, :lcs, :ldm, :ldp, :ldt, :lldp, :mpls_lspm, :msdp, :mstp, :nd, :netconf, :nqa, :nvo3, :openflow, :ospf, :ospfv3, :pim, :"pim-std", :qos, :radius, :rm, :rmon, :securitytrap, :smlktrap, :snmp, :ssh, :stackmng, :sysclock, :sysom, :system, :tcp, :telnet, :trill, :trunk, :tty, :vbst, :vfs, :"virtual-perception", :vrrp, :vstm, :all], :message=>"%{value} needs to be :aaa, :arp, :bfd, :bgp, :cfg, :configuration, :dad, :devm, :dhcpsnp, :dldp, :driver, :efm, :erps, :\"error-down\", :fcoe, :fei, :fei_comm, :fm, :ifnet, :info, :ipsg, :ipv6, :isis, :l3vpn, :lacp, :lcs, :ldm, :ldp, :ldt, :lldp, :mpls_lspm, :msdp, :mstp, :nd, :netconf, :nqa, :nvo3, :openflow, :ospf, :ospfv3, :pim, :\"pim-std\", :qos, :radius, :rm, :rmon, :securitytrap, :smlktrap, :snmp, :ssh, :stackmng, :sysclock, :sysom, :system, :tcp, :telnet, :trill, :trunk, :tty, :vbst, :vfs, :\"virtual-perception\", :vrrp, :vstm, :all"}, allow_nil: true

        # @return [Object, nil] Alarm trap name.
        attribute :trap_name

        # @return [:Ethernet, :"Eth-Trunk", :Tunnel, :NULL, :LoopBack, :Vlanif, :"100GE", :"40GE", :MTunnel, :"10GE", :GE, :MEth, :Vbdif, :Nve, nil] Interface type.
        attribute :interface_type
        validates :interface_type, inclusion: {:in=>[:Ethernet, :"Eth-Trunk", :Tunnel, :NULL, :LoopBack, :Vlanif, :"100GE", :"40GE", :MTunnel, :"10GE", :GE, :MEth, :Vbdif, :Nve], :message=>"%{value} needs to be :Ethernet, :\"Eth-Trunk\", :Tunnel, :NULL, :LoopBack, :Vlanif, :\"100GE\", :\"40GE\", :MTunnel, :\"10GE\", :GE, :MEth, :Vbdif, :Nve"}, allow_nil: true

        # @return [Object, nil] Interface number.
        attribute :interface_number

        # @return [Object, nil] Source port number.
        attribute :port_number
      end
    end
  end
end

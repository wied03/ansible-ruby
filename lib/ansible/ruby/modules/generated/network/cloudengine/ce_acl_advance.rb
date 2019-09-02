# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages advanced ACL configurations on HUAWEI CloudEngine switches.
      class Ce_acl_advance < Base
        # @return [:present, :absent, :delete_acl, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :delete_acl], :message=>"%{value} needs to be :present, :absent, :delete_acl"}, allow_nil: true

        # @return [Object] ACL number or name. For a numbered rule group, the value ranging from 3000 to 3999 indicates a advance ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.
        attribute :acl_name
        validates :acl_name, presence: true

        # @return [Object, nil] ACL number. The value is an integer ranging from 3000 to 3999.
        attribute :acl_num

        # @return [Object, nil] ACL step. The value is an integer ranging from 1 to 20. The default value is 5.
        attribute :acl_step

        # @return [Object, nil] ACL description. The value is a string of 1 to 127 characters.
        attribute :acl_description

        # @return [Object, nil] Name of a basic ACL rule. The value is a string of 1 to 32 characters.
        attribute :rule_name

        # @return [Object, nil] ID of a basic ACL rule in configuration mode. The value is an integer ranging from 0 to 4294967294.
        attribute :rule_id

        # @return [:permit, :deny, nil] Matching mode of basic ACL rules.
        attribute :rule_action
        validates :rule_action, expression_inclusion: {:in=>[:permit, :deny], :message=>"%{value} needs to be :permit, :deny"}, allow_nil: true

        # @return [:ip, :icmp, :igmp, :ipinip, :tcp, :udp, :gre, :ospf, nil] Protocol type.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:ip, :icmp, :igmp, :ipinip, :tcp, :udp, :gre, :ospf], :message=>"%{value} needs to be :ip, :icmp, :igmp, :ipinip, :tcp, :udp, :gre, :ospf"}, allow_nil: true

        # @return [Object, nil] Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.
        attribute :source_ip

        # @return [Object, nil] Source IP address mask. The value is an integer ranging from 1 to 32.
        attribute :src_mask

        # @return [Object, nil] Name of a source pool. The value is a string of 1 to 32 characters.
        attribute :src_pool_name

        # @return [Object, nil] Destination IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.
        attribute :dest_ip

        # @return [Object, nil] Destination IP address mask. The value is an integer ranging from 1 to 32.
        attribute :dest_mask

        # @return [Object, nil] Name of a destination pool. The value is a string of 1 to 32 characters.
        attribute :dest_pool_name

        # @return [:lt, :eq, :gt, :range, nil] Range type of the source port.
        attribute :src_port_op
        validates :src_port_op, expression_inclusion: {:in=>[:lt, :eq, :gt, :range], :message=>"%{value} needs to be :lt, :eq, :gt, :range"}, allow_nil: true

        # @return [Object, nil] Start port number of the source port. The value is an integer ranging from 0 to 65535.
        attribute :src_port_begin

        # @return [Object, nil] End port number of the source port. The value is an integer ranging from 0 to 65535.
        attribute :src_port_end

        # @return [Object, nil] Name of a source port pool. The value is a string of 1 to 32 characters.
        attribute :src_port_pool_name

        # @return [:lt, :eq, :gt, :range, nil] Range type of the destination port.
        attribute :dest_port_op
        validates :dest_port_op, expression_inclusion: {:in=>[:lt, :eq, :gt, :range], :message=>"%{value} needs to be :lt, :eq, :gt, :range"}, allow_nil: true

        # @return [Object, nil] Start port number of the destination port. The value is an integer ranging from 0 to 65535.
        attribute :dest_port_begin

        # @return [Object, nil] End port number of the destination port. The value is an integer ranging from 0 to 65535.
        attribute :dest_port_end

        # @return [Object, nil] Name of a destination port pool. The value is a string of 1 to 32 characters.
        attribute :dest_port_pool_name

        # @return [:fragment, :clear_fragment, nil] Type of packet fragmentation.
        attribute :frag_type
        validates :frag_type, expression_inclusion: {:in=>[:fragment, :clear_fragment], :message=>"%{value} needs to be :fragment, :clear_fragment"}, allow_nil: true

        # @return [Object, nil] Data packets can be filtered based on the priority field. The value is an integer ranging from 0 to 7.
        attribute :precedence

        # @return [Object, nil] ToS value on which data packet filtering is based. The value is an integer ranging from 0 to 15.
        attribute :tos

        # @return [Object, nil] Differentiated Services Code Point. The value is an integer ranging from 0 to 63.
        attribute :dscp

        # @return [:unconfiged, :echo, :"echo-reply", :"fragmentneed-DFset", :"host-redirect", :"host-tos-redirect", :"host-unreachable", :"information-reply", :"information-request", :"net-redirect", :"net-tos-redirect", :"net-unreachable", :"parameter-problem", :"port-unreachable", :"protocol-unreachable", :"reassembly-timeout", :"source-quench", :"source-route-failed", :"timestamp-reply", :"timestamp-request", :"ttl-exceeded", :"address-mask-reply", :"address-mask-request", :custom, nil] ICMP name.
        attribute :icmp_name
        validates :icmp_name, expression_inclusion: {:in=>[:unconfiged, :echo, :"echo-reply", :"fragmentneed-DFset", :"host-redirect", :"host-tos-redirect", :"host-unreachable", :"information-reply", :"information-request", :"net-redirect", :"net-tos-redirect", :"net-unreachable", :"parameter-problem", :"port-unreachable", :"protocol-unreachable", :"reassembly-timeout", :"source-quench", :"source-route-failed", :"timestamp-reply", :"timestamp-request", :"ttl-exceeded", :"address-mask-reply", :"address-mask-request", :custom], :message=>"%{value} needs to be :unconfiged, :echo, :\"echo-reply\", :\"fragmentneed-DFset\", :\"host-redirect\", :\"host-tos-redirect\", :\"host-unreachable\", :\"information-reply\", :\"information-request\", :\"net-redirect\", :\"net-tos-redirect\", :\"net-unreachable\", :\"parameter-problem\", :\"port-unreachable\", :\"protocol-unreachable\", :\"reassembly-timeout\", :\"source-quench\", :\"source-route-failed\", :\"timestamp-reply\", :\"timestamp-request\", :\"ttl-exceeded\", :\"address-mask-reply\", :\"address-mask-request\", :custom"}, allow_nil: true

        # @return [Object, nil] ICMP type. This parameter is available only when the packet protocol is ICMP. The value is an integer ranging from 0 to 255.
        attribute :icmp_type

        # @return [Object, nil] ICMP message code. Data packets can be filtered based on the ICMP message code. The value is an integer ranging from 0 to 255.
        attribute :icmp_code

        # @return [:yes, :no, nil] Whether TTL Expired is matched, with the TTL value of 1.
        attribute :ttl_expired
        validates :ttl_expired, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.
        attribute :vrf_name

        # @return [Object, nil] TCP flag value. The value is an integer ranging from 0 to 63.
        attribute :syn_flag

        # @return [Object, nil] TCP flag mask value. The value is an integer ranging from 0 to 63.
        attribute :tcp_flag_mask

        # @return [:yes, :no, nil] Match established connections.
        attribute :established
        validates :established, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Name of a time range in which an ACL rule takes effect.
        attribute :time_range

        # @return [Object, nil] Description about an ACL rule.
        attribute :rule_description

        # @return [:"host-query", :"mrouter-adver", :"mrouter-solic", :"mrouter-termi", :"mtrace-resp", :"mtrace-route", :"v1host-report", :"v2host-report", :"v2leave-group", :"v3host-report", nil] Internet Group Management Protocol.
        attribute :igmp_type
        validates :igmp_type, expression_inclusion: {:in=>[:"host-query", :"mrouter-adver", :"mrouter-solic", :"mrouter-termi", :"mtrace-resp", :"mtrace-route", :"v1host-report", :"v2host-report", :"v2leave-group", :"v3host-report"], :message=>"%{value} needs to be :\"host-query\", :\"mrouter-adver\", :\"mrouter-solic\", :\"mrouter-termi\", :\"mtrace-resp\", :\"mtrace-route\", :\"v1host-report\", :\"v2host-report\", :\"v2leave-group\", :\"v3host-report\""}, allow_nil: true

        # @return [:yes, :no, nil] Flag of logging matched data packets.
        attribute :log_flag
        validates :log_flag, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

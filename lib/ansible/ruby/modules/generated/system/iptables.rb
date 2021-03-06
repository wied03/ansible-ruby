# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Iptables is used to set up, maintain, and inspect the tables of IP packet filter rules in the Linux kernel.
      # This module does not handle the saving and/or loading of rules, but rather only manipulates the current rules that are present in memory. This is the same as the behaviour of the C(iptables) and C(ip6tables) command which this module uses internally.
      class Iptables < Base
        # @return [:filter, :nat, :mangle, :raw, :security, nil] This option specifies the packet matching table which the command should operate on. If the kernel is configured with automatic module loading, an attempt will be made to load the appropriate module for that table if it is not already there.
        attribute :table
        validates :table, expression_inclusion: {:in=>[:filter, :nat, :mangle, :raw, :security], :message=>"%{value} needs to be :filter, :nat, :mangle, :raw, :security"}, allow_nil: true

        # @return [:absent, :present, nil] Whether the rule should be absent or present.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:append, :insert, nil] Whether the rule should be appended at the bottom or inserted at the top.,If the rule already exists the chain won't be modified.
        attribute :action
        validates :action, expression_inclusion: {:in=>[:append, :insert], :message=>"%{value} needs to be :append, :insert"}, allow_nil: true

        # @return [Integer, nil] Insert the rule as the given rule number. This works only with action = 'insert'.
        attribute :rule_num
        validates :rule_num, type: Integer

        # @return [:ipv4, :ipv6, nil] Which version of the IP protocol this rule should apply to.
        attribute :ip_version
        validates :ip_version, expression_inclusion: {:in=>[:ipv4, :ipv6], :message=>"%{value} needs to be :ipv4, :ipv6"}, allow_nil: true

        # @return [String, nil] Chain to operate on.,This option can either be the name of a user defined chain or any of the builtin chains: 'INPUT', 'FORWARD', 'OUTPUT', 'PREROUTING', 'POSTROUTING', 'SECMARK', 'CONNSECMARK'.
        attribute :chain
        validates :chain, type: String

        # @return [String, nil] The protocol of the rule or of the packet to check.,The specified protocol can be one of tcp, udp, udplite, icmp, esp, ah, sctp or the special keyword "all", or it can be a numeric value, representing one of these protocols or a different one. A protocol name from /etc/protocols is also allowed. A "!" argument before the protocol inverts the test.  The number zero is equivalent to all. "all" will match with all protocols and is taken as default when this option is omitted.
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] Source specification.,Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.,Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.,The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A "!" argument before the address specification inverts the sense of the address.
        attribute :source
        validates :source, type: String

        # @return [Object, nil] Destination specification.,Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.,Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.,The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A "!" argument before the address specification inverts the sense of the address.
        attribute :destination

        # @return [Object, nil] TCP flags specification.,C(tcp_flags) expects a dict with the two keys C(flags) and C(flags_set).
        attribute :tcp_flags

        # @return [Object, nil] Specifies a match to use, that is, an extension module that tests for a specific property. The set of matches make up the condition under which a target is invoked. Matches are evaluated first to last if specified as an array and work in short-circuit fashion, i.e. if one extension yields false, evaluation will stop.
        attribute :match

        # @return [String, nil] This specifies the target of the rule; i.e., what to do if the packet matches it. The target can be a user-defined chain (other than the one this rule is in), one of the special builtin targets which decide the fate of the packet immediately, or an extension (see EXTENSIONS below).  If this option is omitted in a rule (and the goto parameter is not used), then matching the rule will have no effect on the packet's fate, but the counters on the rule will be incremented.
        attribute :jump
        validates :jump, type: String

        # @return [Object, nil] Specifies a log text for the rule. Only make sense with a LOG jump.
        attribute :log_prefix

        # @return [Object, nil] This specifies that the processing should continue in a user specified chain. Unlike the jump argument return will not continue processing in this chain but instead in the chain that called us via jump.
        attribute :goto

        # @return [String, nil] Name of an interface via which a packet was received (only for packets entering the INPUT, FORWARD and PREROUTING chains). When the "!" argument is used before the interface name, the sense is inverted. If the interface name ends in a "+", then any interface which begins with this name will match. If this option is omitted, any interface name will match.
        attribute :in_interface
        validates :in_interface, type: String

        # @return [Object, nil] Name of an interface via which a packet is going to be sent (for packets entering the FORWARD, OUTPUT and POSTROUTING chains). When the "!" argument is used before the interface name, the sense is inverted. If the interface name ends in a "+", then any interface which begins with this name will match. If this option is omitted, any interface name will match.
        attribute :out_interface

        # @return [Object, nil] This means that the rule only refers to second and further fragments of fragmented packets. Since there is no way to tell the source or destination ports of such a packet (or ICMP type), such a packet will not match any rules which specify them. When the "!" argument precedes fragment argument, the rule will only match head fragments, or unfragmented packets.
        attribute :fragment

        # @return [Object, nil] This enables the administrator to initialize the packet and byte counters of a rule (during INSERT, APPEND, REPLACE operations).
        attribute :set_counters

        # @return [Object, nil] Source port or port range specification. This can either be a service name or a port number. An inclusive range can also be specified, using the format first:last. If the first port is omitted, '0' is assumed; if the last is omitted, '65535' is assumed. If the first port is greater than the second one they will be swapped.
        attribute :source_port

        # @return [Integer, nil] Destination port or port range specification. This can either be a service name or a port number. An inclusive range can also be specified, using the format first:last. If the first port is omitted, '0' is assumed; if the last is omitted, '65535' is assumed. If the first port is greater than the second one they will be swapped. This is only valid if the rule also specifies one of the following protocols: tcp, udp, dccp or sctp.
        attribute :destination_port
        validates :destination_port, type: Integer

        # @return [Integer, nil] This specifies a destination port or range of ports to use: without this, the destination port is never altered. This is only valid if the rule also specifies one of the following protocols: tcp, udp, dccp or sctp.
        attribute :to_ports
        validates :to_ports, type: Integer

        # @return [Object, nil] This specifies a destination address to use with DNAT.,Without this, the destination address is never altered.
        attribute :to_destination

        # @return [Object, nil] This specifies a source address to use with SNAT.,Without this, the source address is never altered.
        attribute :to_source

        # @return [:ignore, :match, :negate, nil] This allows matching packets that have the SYN bit set and the ACK and RST bits unset.,When negated, this matches all packets with the RST or the ACK bits set.
        attribute :syn
        validates :syn, expression_inclusion: {:in=>[:ignore, :match, :negate], :message=>"%{value} needs to be :ignore, :match, :negate"}, allow_nil: true

        # @return [Integer, nil] This allows specifying a DSCP mark to be added to packets. It takes either an integer or hex value.,Mutually exclusive with C(set_dscp_mark_class).
        attribute :set_dscp_mark
        validates :set_dscp_mark, type: Integer

        # @return [String, nil] This allows specifying a predefined DiffServ class which will be translated to the corresponding DSCP mark.,Mutually exclusive with C(set_dscp_mark).
        attribute :set_dscp_mark_class
        validates :set_dscp_mark_class, type: String

        # @return [String, nil] This specifies a comment that will be added to the rule.
        attribute :comment
        validates :comment, type: String

        # @return [:DNAT, :ESTABLISHED, :INVALID, :NEW, :RELATED, :SNAT, :UNTRACKED, nil] C(ctstate) is a list of the connection states to match in the conntrack module. Possible states are: 'INVALID', 'NEW', 'ESTABLISHED', 'RELATED', 'UNTRACKED', 'SNAT', 'DNAT'
        attribute :ctstate
        validates :ctstate, expression_inclusion: {:in=>[:DNAT, :ESTABLISHED, :INVALID, :NEW, :RELATED, :SNAT, :UNTRACKED], :message=>"%{value} needs to be :DNAT, :ESTABLISHED, :INVALID, :NEW, :RELATED, :SNAT, :UNTRACKED"}, allow_nil: true

        # @return [Object, nil] Specifies the maximum average number of matches to allow per second.,The number can specify units explicitly, using `/second', `/minute', `/hour' or `/day', or parts of them (so `5/second' is the same as `5/s').
        attribute :limit

        # @return [Object, nil] Specifies the maximum burst before the above limit kicks in.
        attribute :limit_burst

        # @return [Object, nil] Specifies the UID or username to use in match by owner rule. From Ansible 2.6 when the C(!) argument is prepended then the it inverts the rule to apply instead to all users except that one specified.
        attribute :uid_owner

        # @return [String, nil] Specifies the error packet type to return while rejecting. It implies "jump: REJECT"
        attribute :reject_with
        validates :reject_with, type: String

        # @return [Object, nil] This allows specification of the ICMP type, which can be a numeric ICMP type, type/code pair, or one of the ICMP type names shown by the command 'iptables -p icmp -h'
        attribute :icmp_type

        # @return [Object, nil] Flushes the specified table and chain of all rules.,If no chain is specified then the entire table is purged.,Ignores all other parameters.
        attribute :flush

        # @return [:ACCEPT, :DROP, :QUEUE, :RETURN, nil] Set the policy for the chain to the given target.,Only built-in chains can have policies.,This parameter requires the C(chain) parameter.,Ignores all other parameters.
        attribute :policy
        validates :policy, expression_inclusion: {:in=>[:ACCEPT, :DROP, :QUEUE, :RETURN], :message=>"%{value} needs to be :ACCEPT, :DROP, :QUEUE, :RETURN"}, allow_nil: true
      end
    end
  end
end

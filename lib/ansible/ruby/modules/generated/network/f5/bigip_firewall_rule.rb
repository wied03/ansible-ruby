# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages firewall rules in an AFM firewall policy. New rules will always be added to the end of the policy. Rules can be re-ordered using the C(bigip_security_policy) module. Rules can also be pre-ordered using the C(bigip_security_policy) module and then later updated using the C(bigip_firewall_rule) module.
      class Bigip_firewall_rule < Base
        # @return [String] Specifies the name of the rule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The policy which contains the rule to be managed.,One of either C(parent_policy) or C(parent_rule_list) is required.
        attribute :parent_policy
        validates :parent_policy, type: String

        # @return [Object, nil] The rule list which contains the rule to be managed.,One of either C(parent_policy) or C(parent_rule_list) is required.
        attribute :parent_rule_list

        # @return [:accept, :drop, :reject, :"accept-decisively", nil] Specifies the action for the firewall rule.,When C(accept), allows packets with the specified source, destination, and protocol to pass through the firewall. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present.,When C(drop), drops packets with the specified source, destination, and protocol. Dropping a packet is a silent action with no notification to the source or destination systems. Dropping the packet causes the connection to be retried until the retry threshold is reached.,When C(reject), rejects packets with the specified source, destination, and protocol. When a packet is rejected the firewall sends a destination unreachable message to the sender.,When C(accept-decisively), allows packets with the specified source, destination, and protocol to pass through the firewall, and does not require any further processing by any of the further firewalls. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present. If the Rule List is applied to a virtual server, management IP, or self IP firewall rule, then Accept Decisively is equivalent to Accept.,When creating a new rule, if this parameter is not provided, the default is C(reject).
        attribute :action
        validates :action, expression_inclusion: {:in=>[:accept, :drop, :reject, :"accept-decisively"], :message=>"%{value} needs to be :accept, :drop, :reject, :\"accept-decisively\""}, allow_nil: true

        # @return [:enabled, :disabled, :scheduled, nil] Indicates the activity state of the rule or rule list.,When C(disabled), specifies that the rule or rule list does not apply at all.,When C(enabled), specifies that the system applies the firewall rule or rule list to the given context and addresses.,When C(scheduled), specifies that the system applies the rule or rule list according to the specified schedule.,When creating a new rule, if this parameter is not provided, the default is C(enabled).
        attribute :status
        validates :status, expression_inclusion: {:in=>[:enabled, :disabled, :scheduled], :message=>"%{value} needs to be :enabled, :disabled, :scheduled"}, allow_nil: true

        # @return [Object, nil] Specifies a schedule for the firewall rule.,You configure schedules to define days and times when the firewall rule is made active.
        attribute :schedule

        # @return [Object, nil] The rule description.
        attribute :description

        # @return [String, nil] Specifies an iRule that is applied to the rule.,An iRule can be started when the firewall rule matches traffic.
        attribute :irule
        validates :irule, type: String

        # @return [String, nil] Specifies the protocol to which the rule applies.,Protocols may be specified by either their name or numeric value.,A special protocol value C(any) can be specified to match any protocol. The numeric equivalent of this protocol is C(255).
        attribute :protocol
        validates :protocol, type: String

        # @return [Array<Hash>, Hash, nil] Specifies packet sources to which the rule applies.,Leaving this field blank applies the rule to all addresses and all ports.,You can specify the following source items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.,You can specify a mix of different types of items for the source address.
        attribute :source
        validates :source, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Specifies packet destinations to which the rule applies.,Leaving this field blank applies the rule to all addresses and all ports.,You can specify the following destination items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.,You can specify a mix of different types of items for the source address.
        attribute :destination
        validates :destination, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] Specifies whether logging is enabled or disabled for the firewall rule.,When creating a new rule, if this parameter is not specified, the default if C(no).
        attribute :logging
        validates :logging, type: Symbol

        # @return [String, nil] Specifies an existing rule list to use in the rule.,This parameter is mutually exclusive with many of the other individual-rule specific settings. This includes C(logging), C(action), C(source), C(destination), C(irule'), C(protocol) and C(logging).
        attribute :rule_list
        validates :rule_list, type: String

        # @return [Hash, nil] Specifies the Internet Control Message Protocol (ICMP) or ICMPv6 message C(type) and C(code) that the rule uses.,This parameter is only relevant when C(protocol) is either C(icmp)(1) or C(icmpv6)(58).
        attribute :icmp_message
        validates :icmp_message, type: Hash

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(state) is C(present), ensures that the rule exists.,When C(state) is C(absent), ensures that the rule is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

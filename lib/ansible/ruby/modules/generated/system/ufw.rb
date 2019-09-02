# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage firewall with UFW.
      class Ufw < Base
        # @return [:disabled, :enabled, :reloaded, :reset, nil] C(enabled) reloads firewall and enables firewall on boot.,C(disabled) unloads firewall and disables firewall on boot.,C(reloaded) reloads firewall.,C(reset) disables and resets firewall to installation defaults.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:disabled, :enabled, :reloaded, :reset], :message=>"%{value} needs to be :disabled, :enabled, :reloaded, :reset"}, allow_nil: true

        # @return [:allow, :deny, :reject, nil] Change the default policy for incoming or outgoing traffic.
        attribute :policy
        validates :policy, expression_inclusion: {:in=>[:allow, :deny, :reject], :message=>"%{value} needs to be :allow, :deny, :reject"}, allow_nil: true

        # @return [:in, :incoming, :out, :outgoing, :routed, nil] Select direction for a rule or default policy command.
        attribute :direction
        validates :direction, expression_inclusion: {:in=>[:in, :incoming, :out, :outgoing, :routed], :message=>"%{value} needs to be :in, :incoming, :out, :outgoing, :routed"}, allow_nil: true

        # @return [:low, :medium, :high, :full, Boolean, nil] Toggles logging. Logged packets use the LOG_KERN syslog facility.
        attribute :logging
        validates :logging, expression_inclusion: {:in=>[true, false, :low, :medium, :high, :full], :message=>"%{value} needs to be true, false, :low, :medium, :high, :full"}, allow_nil: true

        # @return [Object, nil] Insert the corresponding rule as rule number NUM
        attribute :insert

        # @return [:allow, :deny, :limit, :reject, nil] Add firewall rule
        attribute :rule
        validates :rule, expression_inclusion: {:in=>[:allow, :deny, :limit, :reject], :message=>"%{value} needs to be :allow, :deny, :limit, :reject"}, allow_nil: true

        # @return [Symbol, nil] Log new connections matched to this rule
        attribute :log
        validates :log, type: Symbol

        # @return [String, nil] Source IP address.
        attribute :from_ip
        validates :from_ip, type: String

        # @return [Integer, nil] Source port.
        attribute :from_port
        validates :from_port, type: Integer

        # @return [String, nil] Destination IP address.
        attribute :to_ip
        validates :to_ip, type: String

        # @return [Integer, nil] Destination port.
        attribute :to_port
        validates :to_port, type: Integer

        # @return [:any, :tcp, :udp, :ipv6, :esp, :ah, nil] TCP/IP protocol.
        attribute :proto
        validates :proto, expression_inclusion: {:in=>[:any, :tcp, :udp, :ipv6, :esp, :ah], :message=>"%{value} needs to be :any, :tcp, :udp, :ipv6, :esp, :ah"}, allow_nil: true

        # @return [String, nil] Use profile located in C(/etc/ufw/applications.d).
        attribute :name
        validates :name, type: String

        # @return [Symbol, nil] Delete rule.
        attribute :delete
        validates :delete, type: Symbol

        # @return [String, nil] Specify interface for rule.
        attribute :interface
        validates :interface, type: String

        # @return [Symbol, nil] Apply the rule to routed/forwarded packets.
        attribute :route
        validates :route, type: Symbol

        # @return [String, nil] Add a comment to the rule. Requires UFW version >=0.35.
        attribute :comment
        validates :comment, type: String
      end
    end
  end
end

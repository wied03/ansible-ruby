# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ufw < Base
        # @return [Object] C(enabled) reloads firewall and enables firewall on boot.,C(disabled) unloads firewall and disables firewall on boot.,C(reloaded) reloads firewall.,C(reset) disables and resets firewall to installation defaults.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled, :reloaded, :reset], :message=>"%{value} needs to be :enabled, :disabled, :reloaded, :reset"}, allow_nil: true

        # @return [Object] Change the default policy for incoming or outgoing traffic.
        attribute :policy
        validates :policy, inclusion: {:in=>[:allow, :deny, :reject], :message=>"%{value} needs to be :allow, :deny, :reject"}, allow_nil: true

        # @return [Object] Select direction for a rule or default policy command.
        attribute :direction
        validates :direction, inclusion: {:in=>[:in, :out, :incoming, :outgoing, :routed], :message=>"%{value} needs to be :in, :out, :incoming, :outgoing, :routed"}, allow_nil: true

        # @return [Object] Toggles logging. Logged packets use the LOG_KERN syslog facility.
        attribute :logging
        validates :logging, inclusion: {:in=>[:on, :off, :low, :medium, :high, :full], :message=>"%{value} needs to be :on, :off, :low, :medium, :high, :full"}, allow_nil: true

        # @return [Object] Insert the corresponding rule as rule number NUM
        attribute :insert

        # @return [Object] Add firewall rule
        attribute :rule
        validates :rule, inclusion: {:in=>[:allow, :deny, :reject, :limit], :message=>"%{value} needs to be :allow, :deny, :reject, :limit"}, allow_nil: true

        # @return [Object] Log new connections matched to this rule
        attribute :log
        validates :log, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Source IP address.
        attribute :from_ip
        validates :from_ip, type: String

        # @return [Object] Source port.
        attribute :from_port

        # @return [String] Destination IP address.
        attribute :to_ip
        validates :to_ip, type: String

        # @return [Object] Destination port.
        attribute :to_port

        # @return [Object] TCP/IP protocol.
        attribute :proto
        validates :proto, inclusion: {:in=>[:any, :tcp, :udp, :ipv6, :esp, :ah], :message=>"%{value} needs to be :any, :tcp, :udp, :ipv6, :esp, :ah"}, allow_nil: true

        # @return [Object] Use profile located in C(/etc/ufw/applications.d)
        attribute :name

        # @return [Object] Delete rule.
        attribute :delete
        validates :delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Specify interface for rule.
        attribute :interface

        # @return [Object] Apply the rule to routed/forwarded packets.
        attribute :route
        validates :route, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

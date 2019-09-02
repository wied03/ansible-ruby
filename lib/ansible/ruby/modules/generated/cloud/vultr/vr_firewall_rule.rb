# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove firewall rules.
      class Vultr_firewall_rule < Base
        # @return [String] Name of the firewall group.
        attribute :group
        validates :group, presence: true, type: String

        # @return [:v4, :v6, nil] IP address version
        attribute :ip_version
        validates :ip_version, expression_inclusion: {:in=>[:v4, :v6], :message=>"%{value} needs to be :v4, :v6"}, allow_nil: true

        # @return [:icmp, :tcp, :udp, :gre, nil] Protocol of the firewall rule.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:icmp, :tcp, :udp, :gre], :message=>"%{value} needs to be :icmp, :tcp, :udp, :gre"}, allow_nil: true

        # @return [String, nil] Network in CIDR format,The CIDR format must match with the C(ip_version) value.,Required if C(state=present).,Defaulted to 0.0.0.0/0 or ::/0 depending on C(ip_version).
        attribute :cidr
        validates :cidr, type: String

        # @return [Integer, nil] Start port for the firewall rule.,Required if C(protocol) is tcp or udp and I(state=present).
        attribute :start_port
        validates :start_port, type: Integer

        # @return [Integer, nil] End port for the firewall rule.,Only considered if C(protocol) is tcp or udp and I(state=present).
        attribute :end_port
        validates :end_port, type: Integer

        # @return [:present, :absent, nil] State of the firewall rule.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

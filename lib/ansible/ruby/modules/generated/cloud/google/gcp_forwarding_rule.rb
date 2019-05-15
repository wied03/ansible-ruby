# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destroy a Forwarding_Rule. See U(https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) for an overview. More details on the Global Forwarding_Rule API can be found at U(https://cloud.google.com/compute/docs/reference/latest/globalForwardingRules) More details on the Forwarding Rules API can be found at U(https://cloud.google.com/compute/docs/reference/latest/forwardingRules)
      class Gcp_forwarding_rule < Base
        # @return [String, nil] IPv4 or named IP address. Must be of the same scope (regional, global). Reserved addresses can (and probably should) be used for global forwarding rules. You may reserve IPs from the console or via the gce_eip module.
        attribute :address
        validates :address, type: String

        # @return [String] Name of the Forwarding_Rule.
        attribute :forwarding_rule_name
        validates :forwarding_rule_name, presence: true, type: String

        # @return [Integer, nil] For global forwarding rules, must be set to 80 or 8080 for TargetHttpProxy, and 443 for TargetHttpsProxy or TargetSslProxy.
        attribute :port_range
        validates :port_range, type: Integer

        # @return [String, nil] For global forwarding rules, TCP, UDP, ESP, AH, SCTP or ICMP. Default is TCP.
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] The region for this forwarding rule. Currently, only 'global' is supported.
        attribute :region
        validates :region, type: String

        # @return [:present, :absent] The state of the Forwarding Rule. 'present' or 'absent'
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] Target resource for forwarding rule. For global proxy, this is a Global TargetProxy resource. Required for external load balancing (including Global load balancing)
        attribute :target
        validates :target, type: String
      end
    end
  end
end

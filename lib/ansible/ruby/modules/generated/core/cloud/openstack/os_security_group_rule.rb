# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove rule from an existing security group
      class Os_security_group_rule < Base
        # @return [String] Name or ID of the security group
        attribute :security_group
        validates :security_group, presence: true, type: String

        # @return [:tcp, :udp, :icmp, 112, :None, nil] IP protocols TCP UDP ICMP 112 (VRRP)
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp, :icmp, 112, :None], :message=>"%{value} needs to be :tcp, :udp, :icmp, 112, :None"}, allow_nil: true

        # @return [Integer, nil] Starting port
        attribute :port_range_min
        validates :port_range_min, type: Integer

        # @return [Integer, nil] Ending port
        attribute :port_range_max
        validates :port_range_max, type: Integer

        # @return [String, nil] Source IP address(es) in CIDR notation (exclusive with remote_group)
        attribute :remote_ip_prefix
        validates :remote_ip_prefix, type: String

        # @return [String, nil] Name or ID of the Security group to link (exclusive with remote_ip_prefix)
        attribute :remote_group
        validates :remote_group, type: String

        # @return [:IPv4, :IPv6, nil] Must be IPv4 or IPv6, and addresses represented in CIDR must match the ingress or egress rules. Not all providers support IPv6.
        attribute :ethertype
        validates :ethertype, inclusion: {:in=>[:IPv4, :IPv6], :message=>"%{value} needs to be :IPv4, :IPv6"}, allow_nil: true

        # @return [:egress, :ingress, nil] The direction in which the security group rule is applied. Not all providers support egress.
        attribute :direction
        validates :direction, inclusion: {:in=>[:egress, :ingress], :message=>"%{value} needs to be :egress, :ingress"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

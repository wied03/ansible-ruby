# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_securitygroup_rule < Base
        # @return [String] Name of the security group the rule is related to. The security group must be existing.
        attribute :security_group
        validates :security_group, presence: true, type: String

        # @return [:present, :absent, nil] State of the security group rule.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:tcp, :udp, :icmp, :ah, :esp, :gre, nil] Protocol of the security group rule.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp, :icmp, :ah, :esp, :gre], :message=>"%{value} needs to be :tcp, :udp, :icmp, :ah, :esp, :gre"}, allow_nil: true

        # @return [:ingress, :egress, nil] Ingress or egress security group rule.
        attribute :type
        validates :type, inclusion: {:in=>[:ingress, :egress], :message=>"%{value} needs to be :ingress, :egress"}, allow_nil: true

        # @return [String] CIDR (full notation) to be used for security group rule.
        attribute :cidr
        validates :cidr, type: String

        # @return [String] Security group this rule is based of.
        attribute :user_security_group
        validates :user_security_group, type: String

        # @return [Fixnum] Start port for this rule. Required if C(protocol=tcp) or C(protocol=udp).
        attribute :start_port
        validates :start_port, type: Fixnum

        # @return [Fixnum] End port for this rule. Required if C(protocol=tcp) or C(protocol=udp), but C(start_port) will be used if not set.
        attribute :end_port
        validates :end_port, type: Fixnum

        # @return [Fixnum] Type of the icmp message being sent. Required if C(protocol=icmp).
        attribute :icmp_type
        validates :icmp_type, type: Fixnum

        # @return [Fixnum] Error code for this icmp message. Required if C(protocol=icmp).
        attribute :icmp_code
        validates :icmp_code, type: Fixnum

        # @return [Object] Name of the project the security group to be created in.
        attribute :project

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end

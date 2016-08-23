# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_firewall < Base
        # @return [String] Public IP address the ingress rule is assigned to.,Required if C(type=ingress).
        attribute :ip_address
        validates :ip_address, type: String

        # @return [String] Network the egress rule is related to.,Required if C(type=egress).
        attribute :network
        validates :network, type: String

        # @return [:present, :absent, nil] State of the firewall rule.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:ingress, :egress, nil] Type of the firewall rule.
        attribute :type
        validates :type, inclusion: {:in=>[:ingress, :egress], :message=>"%{value} needs to be :ingress, :egress"}, allow_nil: true

        # @return [:tcp, :udp, :icmp, :all, nil] Protocol of the firewall rule.,C(all) is only available if C(type=egress)
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp, :icmp, :all], :message=>"%{value} needs to be :tcp, :udp, :icmp, :all"}, allow_nil: true

        # @return [String] CIDR (full notation) to be used for firewall rule.
        attribute :cidr
        validates :cidr, type: String

        # @return [Fixnum] Start port for this rule. Considered if C(protocol=tcp) or C(protocol=udp).
        attribute :start_port
        validates :start_port, type: Fixnum

        # @return [Fixnum] End port for this rule. Considered if C(protocol=tcp) or C(protocol=udp). If not specified, equal C(start_port).
        attribute :end_port
        validates :end_port, type: Fixnum

        # @return [Object] Type of the icmp message being sent. Considered if C(protocol=icmp).
        attribute :icmp_type

        # @return [Object] Error code for this icmp message. Considered if C(protocol=icmp).
        attribute :icmp_code

        # @return [Object] Domain the firewall rule is related to.
        attribute :domain

        # @return [Object] Account the firewall rule is related to.
        attribute :account

        # @return [Object] Name of the project the firewall rule is related to.
        attribute :project

        # @return [Object] Name of the zone in which the virtual machine is in.,If not set, default zone is used.
        attribute :zone

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end

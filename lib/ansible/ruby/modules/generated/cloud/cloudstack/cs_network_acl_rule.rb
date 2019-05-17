# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, update and remove network ACL rules.
      class Cs_network_acl_rule < Base
        # @return [String] Name of the network ACL.
        attribute :network_acl
        validates :network_acl, presence: true, type: String

        # @return [String, nil] CIDR of the rule.
        attribute :cidr
        validates :cidr, type: String

        # @return [Integer] CIDR of the rule.
        attribute :rule_position
        validates :rule_position, presence: true, type: Integer

        # @return [:tcp, :udp, :icmp, :all, :by_number, nil] Protocol of the rule
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp, :icmp, :all, :by_number], :message=>"%{value} needs to be :tcp, :udp, :icmp, :all, :by_number"}, allow_nil: true

        # @return [Object, nil] Protocol number from 1 to 256 required if C(protocol=by_number).
        attribute :protocol_number

        # @return [Integer, nil] Start port for this rule.,Considered if C(protocol=tcp) or C(protocol=udp).
        attribute :start_port
        validates :start_port, type: Integer

        # @return [Integer, nil] End port for this rule.,Considered if C(protocol=tcp) or C(protocol=udp).,If not specified, equal C(start_port).
        attribute :end_port
        validates :end_port, type: Integer

        # @return [Object, nil] Type of the icmp message being sent.,Considered if C(protocol=icmp).
        attribute :icmp_type

        # @return [Object, nil] Error code for this icmp message.,Considered if C(protocol=icmp).
        attribute :icmp_code

        # @return [String] VPC the network ACL is related to.
        attribute :vpc
        validates :vpc, presence: true, type: String

        # @return [:ingress, :egress, nil] Traffic type of the rule.
        attribute :traffic_type
        validates :traffic_type, inclusion: {:in=>[:ingress, :egress], :message=>"%{value} needs to be :ingress, :egress"}, allow_nil: true

        # @return [:allow, :deny, nil] Action policy of the rule.
        attribute :action_policy
        validates :action_policy, inclusion: {:in=>[:allow, :deny], :message=>"%{value} needs to be :allow, :deny"}, allow_nil: true

        # @return [Object, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,If you want to delete all tags, set a empty list e.g. C(tags: []).
        attribute :tags

        # @return [Object, nil] Domain the VPC is related to.
        attribute :domain

        # @return [Object, nil] Account the VPC is related to.
        attribute :account

        # @return [Object, nil] Name of the project the VPC is related to.
        attribute :project

        # @return [Object, nil] Name of the zone the VPC related to.,If not set, default zone is used.
        attribute :zone

        # @return [:present, :absent, nil] State of the network ACL rule.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

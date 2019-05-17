# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides management of firewall IPv4 policies on FortiOS devices.
      class Fortios_ipv4_policy < Base
        # @return [Integer] Policy ID. Warning: policy ID number is different than Policy sequence number. The policy ID is the number assigned at policy creation. The sequence number represents the order in which the Fortigate will evaluate the rule for policy enforcement, and also the order in which rules are listed in the GUI and CLI. These two numbers do not necessarily correlate: this module is based off policy ID. TIP: policy ID can be viewed in the GUI by adding 'ID' to the display columns
        attribute :id
        validates :id, presence: true, type: Integer

        # @return [:present, :absent, nil] Specifies if policy I(id) need to be added or deleted.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Specifies source interface name(s).
        attribute :src_intf
        validates :src_intf, type: String

        # @return [String, nil] Specifies destination interface name(s).
        attribute :dst_intf
        validates :dst_intf, type: String

        # @return [Array<String>, String, nil] Specifies source address (or group) object name(s). Required when I(state=present).
        attribute :src_addr
        validates :src_addr, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Negate source address param.
        attribute :src_addr_negate
        validates :src_addr_negate, type: Symbol

        # @return [String, nil] Specifies destination address (or group) object name(s). Required when I(state=present).
        attribute :dst_addr
        validates :dst_addr, type: String

        # @return [Symbol, nil] Negate destination address param.
        attribute :dst_addr_negate
        validates :dst_addr_negate, type: Symbol

        # @return [:accept, :deny, nil] Specifies accept or deny action policy. Required when I(state=present).
        attribute :policy_action
        validates :policy_action, inclusion: {:in=>[:accept, :deny], :message=>"%{value} needs to be :accept, :deny"}, allow_nil: true

        # @return [String, nil] Specifies policy service(s), could be a list (ex: ['MAIL','DNS']). Required when I(state=present).
        attribute :service
        validates :service, type: String

        # @return [Symbol, nil] Negate policy service(s) defined in service value.
        attribute :service_negate
        validates :service_negate, type: Symbol

        # @return [String, nil] defines policy schedule.
        attribute :schedule
        validates :schedule, type: String

        # @return [Symbol, nil] Enable or disable Nat.
        attribute :nat
        validates :nat, type: Symbol

        # @return [Symbol, nil] Use fixed port for nat.
        attribute :fixedport
        validates :fixedport, type: Symbol

        # @return [Object, nil] Specifies NAT pool name.
        attribute :poolname

        # @return [Object, nil] Specifies Antivirus profile name.
        attribute :av_profile

        # @return [Object, nil] Specifies Webfilter profile name.
        attribute :webfilter_profile

        # @return [Object, nil] Specifies IPS Sensor profile name.
        attribute :ips_sensor

        # @return [Object, nil] Specifies Application Control name.
        attribute :application_list

        # @return [:disable, :utm, :all, nil] Logs sessions that matched policy.
        attribute :logtraffic
        validates :logtraffic, inclusion: {:in=>[:disable, :utm, :all], :message=>"%{value} needs to be :disable, :utm, :all"}, allow_nil: true

        # @return [Symbol, nil] Logs beginning of session as well.
        attribute :logtraffic_start
        validates :logtraffic_start, type: Symbol

        # @return [String, nil] free text to describe policy.
        attribute :comment
        validates :comment, type: String
      end
    end
  end
end

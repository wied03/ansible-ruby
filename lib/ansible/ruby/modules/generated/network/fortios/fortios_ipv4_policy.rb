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

        # @return [String, nil] Specifies source interface name.
        attribute :src_intf
        validates :src_intf, type: String

        # @return [String, nil] Specifies destination interface name.
        attribute :dst_intf
        validates :dst_intf, type: String

        # @return [Object, nil] Specifies source address (or group) object name(s). Required when I(state=present).
        attribute :src_addr

        # @return [Boolean, nil] Negate source address param.
        attribute :src_addr_negate
        validates :src_addr_negate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specifies destination address (or group) object name(s). Required when I(state=present).
        attribute :dst_addr

        # @return [Boolean, nil] Negate destination address param.
        attribute :dst_addr_negate
        validates :dst_addr_negate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:accept, :deny, nil] Specifies accept or deny action policy. Required when I(state=present).
        attribute :policy_action
        validates :policy_action, inclusion: {:in=>[:accept, :deny], :message=>"%{value} needs to be :accept, :deny"}, allow_nil: true

        # @return [String, nil] Specifies policy service(s), could be a list (ex: ['MAIL','DNS']). Required when I(state=present).
        attribute :service
        validates :service, type: String

        # @return [Boolean, nil] Negate policy service(s) defined in service value.
        attribute :service_negate
        validates :service_negate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] defines policy schedule.
        attribute :schedule
        validates :schedule, type: String

        # @return [Boolean, nil] Enable or disable Nat.
        attribute :nat
        validates :nat, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Use fixed port for nat.
        attribute :fixedport
        validates :fixedport, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

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

        # @return [Object, nil] free text to describe policy.
        attribute :comment
      end
    end
  end
end

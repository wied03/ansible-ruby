# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for management of switchports settings for Meraki MS switches.
      class Meraki_switchport < Base
        # @return [:query, :present, nil] Specifies whether a switchport should be queried or modified.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:query, :present], :message=>"%{value} needs to be :query, :present"}, allow_nil: true

        # @return [Object, nil] Number of the access policy to apply.,Only applicable to access port types.
        attribute :access_policy_number

        # @return [String, nil] List of VLAN numbers to be allowed on switchport.
        attribute :allowed_vlans
        validates :allowed_vlans, type: String

        # @return [Boolean, nil] Whether a switchport should be enabled or disabled.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Isolation status of switchport.
        attribute :isolation_enabled
        validates :isolation_enabled, type: Symbol

        # @return [:"Auto negotiate", :"100Megabit (auto)", :"100 Megabit full duplex (forced)", nil] Link speed for the switchport.
        attribute :link_negotiation
        validates :link_negotiation, expression_inclusion: {:in=>[:"Auto negotiate", :"100Megabit (auto)", :"100 Megabit full duplex (forced)"], :message=>"%{value} needs to be :\"Auto negotiate\", :\"100Megabit (auto)\", :\"100 Megabit full duplex (forced)\""}, allow_nil: true

        # @return [String, nil] Switchport description.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] Port number.
        attribute :number
        validates :number, type: Integer

        # @return [Boolean, nil] Enable or disable Power Over Ethernet on a port.
        attribute :poe_enabled
        validates :poe_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable or disable Rapid Spanning Tree Protocol on a port.
        attribute :rstp_enabled
        validates :rstp_enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Serial nubmer of the switch.
        attribute :serial
        validates :serial, type: String

        # @return [:disabled, :"root guard", :"bpdu guard", :"loop guard", nil] Set state of STP guard.
        attribute :stp_guard
        validates :stp_guard, expression_inclusion: {:in=>[:disabled, :"root guard", :"bpdu guard", :"loop guard"], :message=>"%{value} needs to be :disabled, :\"root guard\", :\"bpdu guard\", :\"loop guard\""}, allow_nil: true

        # @return [String, nil] Space delimited list of tags to assign to a port.
        attribute :tags
        validates :tags, type: String

        # @return [:access, :trunk, nil] Set port type.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [Integer, nil] VLAN number assigned to port.,If a port is of type trunk, the specified VLAN is the native VLAN.
        attribute :vlan
        validates :vlan, type: Integer

        # @return [Integer, nil] VLAN number assigned to a port for voice traffic.,Only applicable to access port type.
        attribute :voice_vlan
        validates :voice_vlan, type: Integer
      end
    end
  end
end

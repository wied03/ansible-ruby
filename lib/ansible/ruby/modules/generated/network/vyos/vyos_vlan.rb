# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on VyOS network devices.
      class Vyos_vlan < Base
        # @return [String, nil] Name of the VLAN.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Configure Virtual interface address.
        attribute :address
        validates :address, type: String

        # @return [Integer] ID of the VLAN. Range 0-4094.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: Integer

        # @return [Array<String>, String] List of interfaces that should be associated to the VLAN.
        attribute :interfaces
        validates :interfaces, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan on device it will result in failure.
        attribute :associated_interfaces
        validates :associated_interfaces, type: TypeGeneric.new(String)

        # @return [Integer, nil] Delay the play should wait to check for declarative intent params values.
        attribute :delay
        validates :delay, type: Integer

        # @return [Object, nil] List of VLANs definitions.
        attribute :aggregate

        # @return [Boolean, nil] Purge VLANs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the VLAN configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

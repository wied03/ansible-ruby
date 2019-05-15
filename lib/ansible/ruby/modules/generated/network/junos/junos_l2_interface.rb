# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Layer-2 interface on Juniper JUNOS network devices.
      class Junos_l2_interface < Base
        # @return [String, nil] Name of the interface excluding any logical unit number.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Description of Interface.
        attribute :description
        validates :description, type: String

        # @return [Array<Hash>, Hash, nil] List of Layer-2 interface definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:access, :trunk, nil] Mode in which interface needs to be configured.
        attribute :mode
        validates :mode, inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [String, nil] Configure given VLAN in access port. The value of C(access_vlan) should be vlan name.
        attribute :access_vlan
        validates :access_vlan, type: String

        # @return [Array<String>, String, nil] List of VLAN names to be configured in trunk port. The value of C(trunk_vlans) should be list of vlan names.
        attribute :trunk_vlans
        validates :trunk_vlans, type: TypeGeneric.new(String)

        # @return [Integer, nil] Native VLAN to be configured in trunk port. The value of C(native_vlan) should be vlan id.
        attribute :native_vlan
        validates :native_vlan, type: Integer

        # @return [Boolean, nil] True if your device has Enhanced Layer 2 Software (ELS).
        attribute :enhanced_layer
        validates :enhanced_layer, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Logical interface number. Value of C(unit) should be of type integer.
        attribute :unit
        validates :unit, type: Integer

        # @return [:present, :absent, nil] State of the Layer-2 Interface configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

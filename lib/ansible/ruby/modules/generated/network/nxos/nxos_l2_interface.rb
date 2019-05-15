# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Layer-2 interface on Cisco NXOS devices.
      class Nxos_l2_interface < Base
        # @return [String] Full name of the interface excluding any logical unit number, i.e. Ethernet1/1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:access, :trunk, nil] Mode in which interface needs to be configured.
        attribute :mode
        validates :mode, inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [Integer, nil] Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.
        attribute :access_vlan
        validates :access_vlan, type: Integer

        # @return [Integer, nil] Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.
        attribute :native_vlan
        validates :native_vlan, type: Integer

        # @return [String, nil] List of VLANs to be configured in trunk port. If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk.
        attribute :trunk_vlans
        validates :trunk_vlans, type: String

        # @return [Object, nil] List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the only VLANs that will be configured on the trunk, i.e. "2-10,15".
        attribute :trunk_allowed_vlans

        # @return [Array<Hash>, Hash, nil] List of Layer-2 interface definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :unconfigured, nil] Manage the state of the Layer-2 Interface configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :unconfigured], :message=>"%{value} needs to be :present, :absent, :unconfigured"}, allow_nil: true
      end
    end
  end
end

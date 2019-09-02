# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of L2 interfaces on Arista EOS network devices.
      class Eos_l2_interface < Base
        # @return [String] Name of the interface
        attribute :name
        validates :name, presence: true, type: String

        # @return [:access, :trunk, nil] Mode in which interface needs to be configured.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [Integer, nil] Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.
        attribute :access_vlan
        validates :access_vlan, type: Integer

        # @return [Integer, nil] Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.
        attribute :native_vlan
        validates :native_vlan, type: Integer

        # @return [String, nil] List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the ONLY VLANs that will be configured on the trunk, i.e. C(2-10,15).
        attribute :trunk_allowed_vlans
        validates :trunk_allowed_vlans, type: String

        # @return [Array<Hash>, Hash, nil] List of Layer-2 interface definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :unconfigured, nil] Manage the state of the Layer-2 Interface configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :unconfigured], :message=>"%{value} needs to be :present, :absent, :unconfigured"}, allow_nil: true
      end
    end
  end
end

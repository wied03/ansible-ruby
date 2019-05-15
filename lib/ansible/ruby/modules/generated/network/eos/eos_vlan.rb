# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on Arista EOS network devices.
      class Eos_vlan < Base
        # @return [String, nil] Name of the VLAN.
        attribute :name
        validates :name, type: String

        # @return [Integer] ID of the VLAN.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: Integer

        # @return [Array<String>, String, nil] List of interfaces that should be associated to the VLAN. The name of interface is case sensitive and should be in expanded format and not abbreviated.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. The name of interface is case sensitive and should be in expanded format and not abbreviated. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.
        attribute :associated_interfaces
        validates :associated_interfaces, type: TypeGeneric.new(String)

        # @return [Integer, nil] Delay the play should wait to check for declarative intent params values.
        attribute :delay
        validates :delay, type: Integer

        # @return [Array<Hash>, Hash, nil] List of VLANs definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Purge VLANs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :active, :suspend, nil] State of the VLAN configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :active, :suspend], :message=>"%{value} needs to be :present, :absent, :active, :suspend"}, allow_nil: true
      end
    end
  end
end

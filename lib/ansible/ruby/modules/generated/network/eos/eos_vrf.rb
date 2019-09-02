# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VRFs on Arista EOS network devices.
      class Eos_vrf < Base
        # @return [String] Name of the VRF.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Route distinguisher of the VRF
        attribute :rd
        validates :rd, type: String

        # @return [Array<String>, String, nil] Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF. The name of interface should be in expanded format and not abbreviated.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Object, nil] This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.
        attribute :associated_interfaces

        # @return [Array<Hash>, Hash, nil] List of VRFs definitions
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Purge VRFs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.
        attribute :delay
        validates :delay, type: Integer

        # @return [:present, :absent, nil] State of the VRF configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

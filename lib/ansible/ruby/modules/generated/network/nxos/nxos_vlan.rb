# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VLAN configurations on NX-OS switches.
      class Nxos_vlan < Base
        # @return [Integer, nil] Single VLAN ID.
        attribute :vlan_id
        validates :vlan_id, type: Integer

        # @return [Array<String>, String, nil] Range of VLANs such as 2-10 or 2,5,10-15, etc.
        attribute :vlan_range
        validates :vlan_range, type: TypeGeneric.new(String)

        # @return [String, nil] Name of VLAN.
        attribute :name
        validates :name, type: String

        # @return [:active, :suspend, nil] Manage the vlan operational state of the VLAN (equivalent to state {active | suspend} command.
        attribute :vlan_state
        validates :vlan_state, inclusion: {:in=>[:active, :suspend], :message=>"%{value} needs to be :active, :suspend"}, allow_nil: true

        # @return [:up, :down, nil] Manage the VLAN administrative state of the VLAN equivalent to shut/no shut in VLAN config mode.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [Object, nil] The Virtual Network Identifier (VNI) ID that is mapped to the VLAN. Valid values are integer and keyword 'default'.
        attribute :mapped_vni

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

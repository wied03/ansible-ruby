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

        # @return [String, nil] Name of VLAN or keyword 'default'.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] List of interfaces that should be associated to the VLAN or keyword 'default'.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.
        attribute :associated_interfaces
        validates :associated_interfaces, type: TypeGeneric.new(String)

        # @return [:active, :suspend, nil] Manage the vlan operational state of the VLAN
        attribute :vlan_state
        validates :vlan_state, inclusion: {:in=>[:active, :suspend], :message=>"%{value} needs to be :active, :suspend"}, allow_nil: true

        # @return [:up, :down, nil] Manage the VLAN administrative state of the VLAN equivalent to shut/no shut in VLAN config mode.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [Object, nil] The Virtual Network Identifier (VNI) ID that is mapped to the VLAN. Valid values are integer and keyword 'default'. Range 4096-16773119.
        attribute :mapped_vni

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:ce, :fabricpath, nil] Set VLAN mode to classical ethernet or fabricpath. This is a valid option for Nexus 5000 and 7000 series.
        attribute :mode
        validates :mode, inclusion: {:in=>[:ce, :fabricpath], :message=>"%{value} needs to be :ce, :fabricpath"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of VLANs definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Purge VLANs not defined in the I(aggregate) parameter. This parameter can be used without aggregate as well.
        attribute :purge
        validates :purge, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.
        attribute :delay
        validates :delay, type: Integer
      end
    end
  end
end

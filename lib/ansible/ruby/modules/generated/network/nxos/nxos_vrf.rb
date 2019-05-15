# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VRFs on CISCO NXOS network devices.
      class Nxos_vrf < Base
        # @return [String] Name of VRF to be managed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:up, :down, nil] Administrative state of the VRF.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [Object, nil] Specify virtual network identifier. Valid values are Integer or keyword 'default'.
        attribute :vni

        # @return [Object, nil] VPN Route Distinguisher (RD). Valid values are a string in one of the route-distinguisher formats (ASN2:NN, ASN4:NN, or IPV4:NN); the keyword 'auto', or the keyword 'default'.
        attribute :rd

        # @return [Array<String>, String, nil] List of interfaces to check the VRF has been configured correctly or keyword 'default'.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.
        attribute :associated_interfaces
        validates :associated_interfaces, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] List of VRFs definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [String, nil] Purge VRFs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, type: String

        # @return [:present, :absent, nil] Manages desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Description of the VRF or keyword 'default'.
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.
        attribute :delay
        validates :delay, type: Integer
      end
    end
  end
end

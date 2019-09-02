# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VRF definitions on Cisco IOS devices.  It allows playbooks to manage individual or the entire VRF collection.  It also supports purging VRF definitions from the configuration that are not explicitly defined.
      class Ios_vrf < Base
        # @return [Array<String>, String, nil] The set of VRF definition objects to be configured on the remote IOS device.  Ths list entries can either be the VRF name or a hash of VRF definitions and attributes.  This argument is mutually exclusive with the C(name) argument.
        attribute :vrfs
        validates :vrfs, type: TypeGeneric.new(String)

        # @return [String, nil] The name of the VRF definition to be managed on the remote IOS device.  The VRF definition name is an ASCII string name used to uniquely identify the VRF.  This argument is mutually exclusive with the C(vrfs) argument
        attribute :name
        validates :name, type: String

        # @return [String, nil] Provides a short description of the VRF definition in the current active configuration.  The VRF definition value accepts alphanumeric characters used to provide additional information about the VRF.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The router-distinguisher value uniquely identifies the VRF to routing processes on the remote IOS system.  The RD value takes the form of C(A:B) where C(A) and C(B) are both numeric values.
        attribute :rd
        validates :rd, type: String

        # @return [Array<String>, String, nil] Identifies the set of interfaces that should be configured in the VRF.  Interfaces must be routed interfaces in order to be placed into a VRF.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Object, nil] This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.
        attribute :associated_interfaces

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device.
        attribute :delay
        validates :delay, type: Integer

        # @return [Boolean, nil] Instructs the module to consider the VRF definition absolute.  It will remove any previously configured VRFs on the device.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Configures the state of the VRF definition as it relates to the device operational configuration.  When set to I(present), the VRF should be configured in the device active configuration and when set to I(absent) the VRF should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] Adds an export and import list of extended route target communities to the VRF.
        attribute :route_both
        validates :route_both, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an export list of extended route target communities to the VRF.
        attribute :route_export
        validates :route_export, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an import list of extended route target communities to the VRF.
        attribute :route_import
        validates :route_import, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an export and import list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_both_ipv4
        validates :route_both_ipv4, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an export list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_export_ipv4
        validates :route_export_ipv4, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an import list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_import_ipv4
        validates :route_import_ipv4, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an export and import list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_both_ipv6
        validates :route_both_ipv6, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an export list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_export_ipv6
        validates :route_export_ipv6, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Adds an import list of extended route target communities in address-family configuration submode to the VRF.
        attribute :route_import_ipv6
        validates :route_import_ipv6, type: TypeGeneric.new(String)
      end
    end
  end
end

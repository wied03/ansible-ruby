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

        # @return [Object, nil] The router-distinguisher value uniquely identifies the VRF to routing processes on the remote IOS system.  The RD value takes the form of C(A:B) where C(A) and C(B) are both numeric values.
        attribute :rd

        # @return [Array<String>, String, nil] Identifies the set of interfaces that should be configured in the VRF.  Interfaces must be routed interfaces in order to be placed into a VRF.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Instructs the module to consider the VRF definition absolute.  It will remove any previously configured VRFs on the device.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Configures the state of the VRF definition as it relates to the device operational configuration.  When set to I(present), the VRF should be configured in the device active configuration and when set to I(absent) the VRF should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

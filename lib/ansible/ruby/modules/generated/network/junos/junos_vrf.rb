# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VRF definitions on Juniper JUNOS devices.  It allows playbooks to manage individual or the entire VRF collection.
      class Junos_vrf < Base
        # @return [String, nil] The name of the VRF definition to be managed on the remote IOS device.  The VRF definition name is an ASCII string name used to uniquely identify the VRF.  This argument is mutually exclusive with the C(aggregate) argument
        attribute :name
        validates :name, type: String

        # @return [String, nil] Provides a short description of the VRF definition in the current active configuration.  The VRF definition value accepts alphanumeric characters used to provide additional information about the VRF.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The router-distinguisher value uniquely identifies the VRF to routing processes on the remote IOS system.  The RD value takes the form of C(A:B) where C(A) and C(B) are both numeric values.
        attribute :rd
        validates :rd, type: String

        # @return [Array<String>, String, nil] Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [String, nil] It configures VRF target community configuration. The target value takes the form of C(target:A:B) where C(A) and C(B) are both numeric values.
        attribute :target
        validates :target, type: String

        # @return [Symbol, nil] Causes JUNOS to allocate a VPN label per VRF rather than per VPN FEC. This allows for forwarding of traffic to directly connected subnets, COS Egress filtering etc.
        attribute :table_label
        validates :table_label, type: Symbol

        # @return [Array<Hash>, Hash, nil] The set of VRF definition objects to be configured on the remote JUNOS device.  Ths list entries can either be the VRF name or a hash of VRF definitions and attributes.  This argument is mutually exclusive with the C(name) argument.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Configures the state of the VRF definition as it relates to the device operational configuration.  When set to I(present), the VRF should be configured in the device active configuration and when set to I(absent) the VRF should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

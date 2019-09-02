# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on Juniper JUNOS network devices.
      class Junos_vlan < Base
        # @return [String] Name of the VLAN.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] ID of the VLAN. Range 1-4094.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: Integer

        # @return [Object, nil] Name of logical layer 3 interface.
        attribute :l3_interface

        # @return [Object, nil] Text description of VLANs.
        attribute :description

        # @return [Object, nil] List of interfaces to check the VLAN has been configured correctly.
        attribute :interfaces

        # @return [Array<Hash>, Hash, nil] List of VLANs definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the VLAN configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on Extreme SLX-OS network devices.
      class Slxos_vlan < Base
        # @return [String, nil] Name of the VLAN.
        attribute :name
        validates :name, type: String

        # @return [Integer] ID of the VLAN. Range 1-4094.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: Integer

        # @return [Array<String>, String] List of interfaces that should be associated to the VLAN.
        attribute :interfaces
        validates :interfaces, presence: true, type: TypeGeneric.new(String)

        # @return [Integer, nil] Delay the play should wait to check for declarative intent params values.
        attribute :delay
        validates :delay, type: Integer

        # @return [Object, nil] List of VLANs definitions.
        attribute :aggregate

        # @return [Symbol, nil] Purge VLANs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, type: Symbol

        # @return [:present, :absent, nil] State of the VLAN configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

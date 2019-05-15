# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on network devices.
      class Net_vlan < Base
        # @return [String, nil] Name of the VLAN.
        attribute :name
        validates :name, type: String

        # @return [Integer, NilClass, nil] ID of the VLAN.
        attribute :vlan_id
        validates :vlan_id, type: MultipleTypes.new(Integer, NilClass)

        # @return [Object, nil] List of interfaces the VLAN should be configured on.
        attribute :interfaces

        # @return [Object, nil] List of VLANs definitions.
        attribute :aggregate

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

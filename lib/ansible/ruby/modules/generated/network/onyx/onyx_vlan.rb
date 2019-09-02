# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of VLANs on Mellanox ONYX network devices.
      class Onyx_vlan < Base
        # @return [String, nil] Name of the VLAN.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] ID of the VLAN.
        attribute :vlan_id
        validates :vlan_id, type: Integer

        # @return [Object, nil] List of VLANs definitions.
        attribute :aggregate

        # @return [Boolean, nil] Purge VLANs not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the VLAN configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

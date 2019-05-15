# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Layer-2 interface on Mellanox ONYX network devices.
      class Onyx_l2_interface < Base
        # @return [String, nil] Name of the interface.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] List of Layer-2 interface definitions.
        attribute :aggregate

        # @return [:access, :trunk, :hybrid, nil] Mode in which interface needs to be configured.
        attribute :mode
        validates :mode, inclusion: {:in=>[:access, :trunk, :hybrid], :message=>"%{value} needs to be :access, :trunk, :hybrid"}, allow_nil: true

        # @return [Integer, nil] Configure given VLAN in access port.
        attribute :access_vlan
        validates :access_vlan, type: Integer

        # @return [Object, nil] List of allowed VLANs in a given trunk port.
        attribute :trunk_allowed_vlans

        # @return [:present, :absent, nil] State of the Layer-2 Interface configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

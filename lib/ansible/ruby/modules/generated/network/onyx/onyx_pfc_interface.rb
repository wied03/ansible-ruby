# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of priority flow control (PFC) on interfaces of Mellanox ONYX network devices.
      class Onyx_pfc_interface < Base
        # @return [String, nil] Name of the interface PFC should be configured on.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] List of interfaces PFC should be configured on.
        attribute :aggregate

        # @return [Symbol, nil] Purge interfaces not defined in the aggregate parameter.
        attribute :purge
        validates :purge, type: Symbol

        # @return [:enabled, :disabled, nil] State of the PFC configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of link aggregation groups on Extreme Networks SLX-OS network devices.
      class Slxos_linkagg < Base
        # @return [Integer, nil] Channel-group number for the port-channel Link aggregation group. Range 1-1024.
        attribute :group
        validates :group, type: Integer

        # @return [:active, :on, :passive, nil] Mode of the link aggregation group.
        attribute :mode
        validates :mode, inclusion: {:in=>[:active, :on, :passive], :message=>"%{value} needs to be :active, :on, :passive"}, allow_nil: true

        # @return [Array<String>, String, nil] List of members of the link aggregation group.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] List of link aggregation definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the link aggregation group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Purge links not defined in the I(aggregate) parameter.
        attribute :purge
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of link aggregation groups on Cisco IOS network devices.
      class Ios_linkagg < Base
        # @return [Integer, nil] Channel-group number for the port-channel Link aggregation group. Range 1-255.
        attribute :group
        validates :group, type: Integer

        # @return [:active, :on, :passive, :auto, :desirable, nil] Mode of the link aggregation group.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:active, :on, :passive, :auto, :desirable], :message=>"%{value} needs to be :active, :on, :passive, :auto, :desirable"}, allow_nil: true

        # @return [Array<String>, String, nil] List of members of the link aggregation group.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] List of link aggregation definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the link aggregation group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Purge links not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

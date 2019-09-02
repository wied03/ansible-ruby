# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of link aggregation groups on Cisco NXOS devices.
      class Nxos_linkagg < Base
        # @return [Integer] Channel-group number for the port-channel Link aggregation group.
        attribute :group
        validates :group, presence: true, type: Integer

        # @return [:active, :on, :passive, nil] Mode for the link aggregation group.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:active, :on, :passive], :message=>"%{value} needs to be :active, :on, :passive"}, allow_nil: true

        # @return [Integer, nil] Minimum number of ports required up before bringing up the link aggregation group.
        attribute :min_links
        validates :min_links, type: Integer

        # @return [Array<String>, String, nil] List of interfaces that will be managed in the link aggregation group.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] When true it forces link aggregation group members to match what is declared in the members param. This can be used to remove members.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of link aggregation definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the link aggregation group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Purge links not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

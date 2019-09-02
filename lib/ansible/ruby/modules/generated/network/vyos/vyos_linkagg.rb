# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of link aggregation groups on VyOS network devices.
      class Vyos_linkagg < Base
        # @return [String] Name of the link aggregation group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:"802.3ad", :"active-backup", :broadcast, :"round-robin", :"transmit-load-balance", :"adaptive-load-balance", :"xor-hash", :on, nil] Mode of the link aggregation group.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:"802.3ad", :"active-backup", :broadcast, :"round-robin", :"transmit-load-balance", :"adaptive-load-balance", :"xor-hash", :on], :message=>"%{value} needs to be :\"802.3ad\", :\"active-backup\", :broadcast, :\"round-robin\", :\"transmit-load-balance\", :\"adaptive-load-balance\", :\"xor-hash\", :on"}, allow_nil: true

        # @return [Array<String>, String, nil] List of members of the link aggregation group.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] List of link aggregation definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :up, :down, nil] State of the link aggregation group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true
      end
    end
  end
end

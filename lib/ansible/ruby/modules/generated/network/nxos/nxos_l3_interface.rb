# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of L3 interfaces on Cisco NXOS network devices.
      class Nxos_l3_interface < Base
        # @return [String, nil] Name of the L3 interface.
        attribute :name
        validates :name, type: String

        # @return [String, nil] IPv4 of the L3 interface.
        attribute :ipv4
        validates :ipv4, type: String

        # @return [Object, nil] IPv6 of the L3 interface.
        attribute :ipv6

        # @return [Array<Hash>, Hash, nil] List of L3 interfaces definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the L3 interface configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

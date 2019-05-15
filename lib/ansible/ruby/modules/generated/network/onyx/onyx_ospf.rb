# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management and configuration of OSPF protocol on Mellanox ONYX network devices.
      class Onyx_ospf < Base
        # @return [Integer] OSPF instance number 1-65535
        attribute :ospf
        validates :ospf, presence: true, type: Integer

        # @return [String, nil] OSPF router ID. Required if I(state=present).
        attribute :router_id
        validates :router_id, type: String

        # @return [Array<Hash>, Hash, nil] List of interfaces and areas. Required if I(state=present).
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] OSPF state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

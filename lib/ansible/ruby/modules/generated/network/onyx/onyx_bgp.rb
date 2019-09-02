# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of BGP router and neighbors on Mellanox ONYX network devices.
      class Onyx_bgp < Base
        # @return [Integer] Local AS number.
        attribute :as_number
        validates :as_number, presence: true, type: Integer

        # @return [String, nil] Router IP address. Required if I(state=present).
        attribute :router_id
        validates :router_id, type: String

        # @return [Array<Hash>, Hash, nil] List of neighbors. Required if I(state=present).
        attribute :neighbors
        validates :neighbors, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] List of advertised networks.
        attribute :networks
        validates :networks, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] BGP state.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

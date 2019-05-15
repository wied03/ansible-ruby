# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of static IP routes on Juniper JUNOS network devices.
      class Junos_static_route < Base
        # @return [String] Network address with prefix of the static route.
        attribute :address
        validates :address, presence: true, type: String

        # @return [String] Next hop IP of the static route.
        attribute :next_hop
        validates :next_hop, presence: true, type: String

        # @return [String, nil] Qualified next hop IP of the static route. Qualified next hops allow to associate preference with a particular next-hop address.
        attribute :qualified_next_hop
        validates :qualified_next_hop, type: String

        # @return [Integer, nil] Global admin preference of the static route.
        attribute :preference
        validates :preference, type: Integer

        # @return [Integer, nil] Assign preference for qualified next hop.
        attribute :qualified_preference
        validates :qualified_preference, type: Integer

        # @return [Array<Hash>, Hash, nil] List of static route definitions
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the static route configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

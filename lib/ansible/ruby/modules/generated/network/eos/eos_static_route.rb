# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of static IP routes on Arista EOS network devices.
      class Eos_static_route < Base
        # @return [String] Network address with prefix of the static route.
        attribute :address
        validates :address, presence: true, type: String

        # @return [String] Next hop IP of the static route.
        attribute :next_hop
        validates :next_hop, presence: true, type: String

        # @return [Integer, nil] Admin distance of the static route.
        attribute :admin_distance
        validates :admin_distance, type: Integer

        # @return [Array<Hash>, Hash, nil] List of static route definitions
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the static route configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

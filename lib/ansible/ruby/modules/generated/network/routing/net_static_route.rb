# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of static IP routes on network appliances (routers, switches et. al.).
      class Net_static_route < Base
        # @return [String] Network prefix of the static route.
        attribute :prefix
        validates :prefix, presence: true, type: String

        # @return [String] Network prefix mask of the static route.
        attribute :mask
        validates :mask, presence: true, type: String

        # @return [String] Next hop IP of the static route.
        attribute :next_hop
        validates :next_hop, presence: true, type: String

        # @return [Object, nil] Admin distance of the static route.
        attribute :admin_distance

        # @return [Array<Hash>, Hash, nil] List of static route definitions
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Purge static routes not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the static route configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

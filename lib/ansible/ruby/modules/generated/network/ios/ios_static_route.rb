# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of static IP routes on Cisco IOS network devices.
      class Ios_static_route < Base
        # @return [String, nil] Network prefix of the static route.
        attribute :prefix
        validates :prefix, type: String

        # @return [String, nil] Network prefix mask of the static route.
        attribute :mask
        validates :mask, type: String

        # @return [String, nil] Next hop IP of the static route.
        attribute :next_hop
        validates :next_hop, type: String

        # @return [Object, nil] Admin distance of the static route.
        attribute :admin_distance

        # @return [Array<Hash>, Hash, nil] List of static route definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the static route configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

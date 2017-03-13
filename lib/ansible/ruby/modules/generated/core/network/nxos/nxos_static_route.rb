# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages static route configuration
      class Nxos_static_route < Base
        # @return [String] Destination prefix of static route.
        attribute :prefix
        validates :prefix, presence: true, type: String

        # @return [String] Next hop address or interface of static route. If interface, it must be the fully-qualified interface name.
        attribute :next_hop
        validates :next_hop, presence: true, type: String

        # @return [String, nil] VRF for static route.
        attribute :vrf
        validates :vrf, type: String

        # @return [Object, nil] Route tag value (numeric).
        attribute :tag

        # @return [String, nil] Name of the route. Used with the name parameter on the CLI.
        attribute :route_name
        validates :route_name, type: String

        # @return [Integer, nil] Preference or administrative difference of route (range 1-255).
        attribute :pref
        validates :pref, type: Integer

        # @return [:present, :absent] Manage the state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end

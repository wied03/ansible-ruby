# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Open vSwitch ports
      class Openvswitch_port < Base
        # @return [String] Name of bridge to manage
        attribute :bridge
        validates :bridge, presence: true, type: String

        # @return [String] Name of port to manage on the bridge
        attribute :port
        validates :port, presence: true, type: String

        # @return [Integer, nil] VLAN tag for this port
        attribute :tag
        validates :tag, type: Integer

        # @return [:present, :absent, nil] Whether the port should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] Dictionary of external_ids applied to a port.
        attribute :external_ids

        # @return [String, nil] Set a single property on a port.
        attribute :set
        validates :set, type: String
      end
    end
  end
end

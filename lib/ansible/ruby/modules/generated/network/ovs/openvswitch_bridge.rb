# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Open vSwitch bridges
      class Openvswitch_bridge < Base
        # @return [String] Name of bridge or fake bridge to manage
        attribute :bridge
        validates :bridge, presence: true, type: String

        # @return [String, nil] Bridge parent of the fake bridge to manage
        attribute :parent
        validates :parent, type: String

        # @return [Integer, nil] The VLAN id of the fake bridge to manage (must be between 0 and 4095). This parameter is required if I(parent) parameter is set.
        attribute :vlan
        validates :vlan, type: Integer

        # @return [:present, :absent, nil] Whether the bridge should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Hash, nil] A dictionary of external-ids. Omitting this parameter is a No-op. To  clear all external-ids pass an empty value.
        attribute :external_ids
        validates :external_ids, type: Hash

        # @return [:secure, :standalone, nil] Set bridge fail-mode. The default value (None) is a No-op.
        attribute :fail_mode
        validates :fail_mode, inclusion: {:in=>[:secure, :standalone], :message=>"%{value} needs to be :secure, :standalone"}, allow_nil: true

        # @return [Object, nil] Run set command after bridge configuration. This parameter is non-idempotent, play will always return I(changed) state if present
        attribute :set
      end
    end
  end
end

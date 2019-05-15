# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages UDLD global configuration params.
      class Nxos_udld < Base
        # @return [:enabled, :disabled, nil] Toggles aggressive mode.
        attribute :aggressive
        validates :aggressive, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Integer, nil] Message time in seconds for UDLD packets or keyword 'default'.
        attribute :msg_time
        validates :msg_time, type: Integer

        # @return [String, nil] Ability to reset all ports shut down by UDLD. 'state' parameter cannot be 'absent' when this is present.
        attribute :reset
        validates :reset, type: String

        # @return [:present, :absent, nil] Manage the state of the resource. When set to 'absent', aggressive and msg_time are set to their default values.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

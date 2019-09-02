# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of LLDP service on Juniper JUNOS network devices.
      class Junos_lldp < Base
        # @return [Integer, nil] Frequency at which LLDP advertisements are sent (in seconds).
        attribute :interval
        validates :interval, type: Integer

        # @return [Integer, nil] Specify the number of seconds the device waits before sending advertisements to neighbors after a change is made in local system.
        attribute :transmit_delay
        validates :transmit_delay, type: Integer

        # @return [Integer, nil] Specify the number of seconds that LLDP information is held before it is discarded. The multiplier value is used in combination with the C(interval) value.
        attribute :hold_multiplier
        validates :hold_multiplier, type: Integer

        # @return [:present, :absent, :enabled, :disabled, nil] Value of C(present) ensures given LLDP configuration is present on device and LLDP is enabled, for value of C(absent) LLDP configuration is deleted and LLDP is in disabled state. Value C(enabled) ensures LLDP protocol is enabled and LLDP configuration if any is configured on remote device, for value of C(disabled) it ensures LLDP protocol is disabled any LLDP configuration if any is still present.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

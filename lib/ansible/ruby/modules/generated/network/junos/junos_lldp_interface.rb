# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of LLDP interfaces configuration on Juniper JUNOS network devices.
      class Junos_lldp_interface < Base
        # @return [String, nil] Name of the interface LLDP should be configured on.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] Value of C(present) ensures given LLDP configured on given I(interfaces) and is enabled, for value of C(absent) LLDP configuration on given I(interfaces) deleted. Value C(enabled) ensures LLDP protocol is enabled on given I(interfaces) and for value of C(disabled) it ensures LLDP is disabled on given I(interfaces).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

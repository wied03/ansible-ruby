# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of LLDP service on Extreme SLX-OS network devices.
      class Slxos_lldp < Base
        # @return [:present, :absent, nil] State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

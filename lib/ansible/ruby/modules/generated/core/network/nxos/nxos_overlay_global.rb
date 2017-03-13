# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures anycast gateway MAC of the switch.
      class Nxos_overlay_global < Base
        # @return [String] Anycast gateway mac of the switch.
        attribute :anycast_gateway_mac
        validates :anycast_gateway_mac, presence: true, type: String
      end
    end
  end
end

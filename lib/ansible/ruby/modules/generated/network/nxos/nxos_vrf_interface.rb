# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages interface specific VRF configuration.
      class Nxos_vrf_interface < Base
        # @return [String] Name of VRF to be managed.
        attribute :vrf
        validates :vrf, presence: true, type: String

        # @return [String] Full name of interface to be managed, i.e. Ethernet1/1.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:present, :absent, nil] Manages desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

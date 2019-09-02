# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage LLDP interface policies on Cisco ACI fabrics.
      class Aci_interface_policy_lldp < Base
        # @return [String] The LLDP interface policy name.
        attribute :lldp_policy
        validates :lldp_policy, presence: true, type: String

        # @return [String, nil] The description for the LLDP interface policy name.
        attribute :description
        validates :description, type: String

        # @return [Symbol, nil] Enable or disable Receive state.,The APIC defaults to C(yes) when unset during creation.
        attribute :receive_state
        validates :receive_state, type: Symbol

        # @return [Symbol, nil] Enable or Disable Transmit state.,The APIC defaults to C(yes) when unset during creation.
        attribute :transmit_state
        validates :transmit_state, type: Symbol

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

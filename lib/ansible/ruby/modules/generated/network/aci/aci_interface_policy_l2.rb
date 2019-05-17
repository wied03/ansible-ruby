# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Layer 2 interface policies on Cisco ACI fabrics.
      class Aci_interface_policy_l2 < Base
        # @return [String] The name of the Layer 2 interface policy.
        attribute :l2_policy
        validates :l2_policy, presence: true, type: String

        # @return [String, nil] The description of the Layer 2 interface policy.
        attribute :description
        validates :description, type: String

        # @return [:core, :disabled, :edge, nil] Determines if QinQ is disabled or if the port should be considered a core or edge port.,The APIC defaults to C(disabled) when unset during creation.
        attribute :qinq
        validates :qinq, inclusion: {:in=>[:core, :disabled, :edge], :message=>"%{value} needs to be :core, :disabled, :edge"}, allow_nil: true

        # @return [Symbol, nil] Determines if Virtual Ethernet Port Aggregator is disabled or enabled.,The APIC defaults to C(no) when unset during creation.
        attribute :vepa
        validates :vepa, type: Symbol

        # @return [:global, :portlocal, nil] The scope of the VLAN.,The APIC defaults to C(global) when unset during creation.
        attribute :vlan_scope
        validates :vlan_scope, inclusion: {:in=>[:global, :portlocal], :message=>"%{value} needs to be :global, :portlocal"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

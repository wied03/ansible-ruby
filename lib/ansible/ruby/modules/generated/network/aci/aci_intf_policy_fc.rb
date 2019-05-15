# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage ACI Fiber Channel interface policies on Cisco ACI fabrics.
      class Aci_interface_policy_fc < Base
        # @return [String] The name of the Fiber Channel interface policy.
        attribute :fc_policy
        validates :fc_policy, presence: true, type: String

        # @return [String, nil] The description of the Fiber Channel interface policy.
        attribute :description
        validates :description, type: String

        # @return [:f, :np, nil] The Port Mode to use.,The APIC defaults to C(f) when unset during creation.
        attribute :port_mode
        validates :port_mode, inclusion: {:in=>[:f, :np], :message=>"%{value} needs to be :f, :np"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

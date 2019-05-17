# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage MCP interface policies on Cisco ACI fabrics.
      class Aci_interface_policy_mcp < Base
        # @return [String] The name of the MCP interface.
        attribute :mcp
        validates :mcp, presence: true, type: String

        # @return [String, nil] The description for the MCP interface.
        attribute :description
        validates :description, type: String

        # @return [Symbol, nil] Enable or disable admin state.,The APIC defaults to C(yes) when unset during creation.
        attribute :admin_state
        validates :admin_state, type: Symbol

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

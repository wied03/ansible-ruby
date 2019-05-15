# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage action rule profiles on Cisco ACI fabrics.
      class Aci_tenant_action_rule_profile < Base
        # @return [String, nil] The name of the action rule profile.
        attribute :action_rule
        validates :action_rule, type: String

        # @return [String, nil] The description for the action rule profile.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The name of the tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

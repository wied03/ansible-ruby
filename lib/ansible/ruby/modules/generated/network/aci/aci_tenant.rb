# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage tenants on Cisco ACI fabrics.
      class Aci_tenant < Base
        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [String, nil] Description for the tenant.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

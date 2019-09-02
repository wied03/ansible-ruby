# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VLAN pools on Cisco ACI fabrics.
      class Aci_vlan_pool < Base
        # @return [:dynamic, :static, nil] The method used for allocating VLANs to resources.
        attribute :pool_allocation_mode
        validates :pool_allocation_mode, expression_inclusion: {:in=>[:dynamic, :static], :message=>"%{value} needs to be :dynamic, :static"}, allow_nil: true

        # @return [String, nil] Description for the C(pool).
        attribute :description
        validates :description, type: String

        # @return [String, nil] The name of the pool.
        attribute :pool
        validates :pool, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

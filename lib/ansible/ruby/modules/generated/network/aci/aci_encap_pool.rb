# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage vlan, vxlan, and vsan pools on Cisco ACI fabrics.
      class Aci_encap_pool < Base
        # @return [String, nil] Description for the C(pool).
        attribute :description
        validates :description, type: String

        # @return [String, nil] The name of the pool.
        attribute :pool
        validates :pool, type: String

        # @return [:dynamic, :static, nil] The method used for allocating encaps to resources.,Only vlan and vsan support allocation modes.
        attribute :pool_allocation_mode
        validates :pool_allocation_mode, expression_inclusion: {:in=>[:dynamic, :static], :message=>"%{value} needs to be :dynamic, :static"}, allow_nil: true

        # @return [:vlan, :vxlan, :vsan] The encap type of C(pool).
        attribute :pool_type
        validates :pool_type, presence: true, expression_inclusion: {:in=>[:vlan, :vxlan, :vsan], :message=>"%{value} needs to be :vlan, :vxlan, :vsan"}

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

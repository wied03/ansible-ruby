# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VLAN encap blocks that are assigned to VLAN pools on Cisco ACI fabrics.
      class Aci_vlan_pool_encap_block < Base
        # @return [:dynamic, :inherit, :static, nil] The method used for allocating encaps to resources.
        attribute :allocation_mode
        validates :allocation_mode, inclusion: {:in=>[:dynamic, :inherit, :static], :message=>"%{value} needs to be :dynamic, :inherit, :static"}, allow_nil: true

        # @return [Object, nil] Description for the pool encap block.
        attribute :description

        # @return [String, nil] The name of the pool that the encap block should be assigned to.
        attribute :pool
        validates :pool, type: String

        # @return [:dynamic, :static, nil] The method used for allocating encaps to resources.
        attribute :pool_allocation_mode
        validates :pool_allocation_mode, inclusion: {:in=>[:dynamic, :static], :message=>"%{value} needs to be :dynamic, :static"}, allow_nil: true

        # @return [Integer, nil] The end of encap block.
        attribute :block_end
        validates :block_end, type: Integer

        # @return [Object, nil] The name to give to the encap block.
        attribute :block_name

        # @return [Integer, nil] The start of the encap block.
        attribute :block_start
        validates :block_start, type: Integer

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

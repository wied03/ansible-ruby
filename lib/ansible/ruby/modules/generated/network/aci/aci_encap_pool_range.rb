# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage vlan, vxlan, and vsan ranges that are assigned to pools on Cisco ACI fabrics.
      class Aci_encap_pool_range < Base
        # @return [:dynamic, :inherit, :static, nil] The method used for allocating encaps to resources.,Only vlan and vsan support allocation modes.
        attribute :allocation_mode
        validates :allocation_mode, inclusion: {:in=>[:dynamic, :inherit, :static], :message=>"%{value} needs to be :dynamic, :inherit, :static"}, allow_nil: true

        # @return [Object, nil] Description for the pool range.
        attribute :description

        # @return [String, nil] The name of the pool that the range should be assigned to.
        attribute :pool
        validates :pool, type: String

        # @return [:dynamic, :static, nil] The method used for allocating encaps to resources.,Only vlan and vsan support allocation modes.
        attribute :pool_allocation_mode
        validates :pool_allocation_mode, inclusion: {:in=>[:dynamic, :static], :message=>"%{value} needs to be :dynamic, :static"}, allow_nil: true

        # @return [:vlan, :vxlan, :vsan] The encap type of C(pool).
        attribute :pool_type
        validates :pool_type, presence: true, inclusion: {:in=>[:vlan, :vxlan, :vsan], :message=>"%{value} needs to be :vlan, :vxlan, :vsan"}

        # @return [Integer, nil] The end of encap range.
        attribute :range_end
        validates :range_end, type: Integer

        # @return [Object, nil] The name to give to the encap range.
        attribute :range_name

        # @return [Integer, nil] The start of the encap range.
        attribute :range_start
        validates :range_start, type: Integer

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage switch policy explicit vPC protection groups on Cisco ACI fabrics.
      class Aci_switch_policy_vpc_protection_group < Base
        # @return [String] The name of the Explicit vPC Protection Group.
        attribute :protection_group
        validates :protection_group, presence: true, type: String

        # @return [Integer] The Explicit vPC Protection Group ID.
        attribute :protection_group_id
        validates :protection_group_id, presence: true, type: Integer

        # @return [Object, nil] The vPC domain policy to be associated with the Explicit vPC Protection Group.
        attribute :vpc_domain_policy

        # @return [Integer] The ID of the first Leaf Switch for the Explicit vPC Protection Group.
        attribute :switch_1_id
        validates :switch_1_id, presence: true, type: Integer

        # @return [Integer] The ID of the Second Leaf Switch for the Explicit vPC Protection Group.
        attribute :switch_2_id
        validates :switch_2_id, presence: true, type: Integer

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind leaf selectors (with node block range and policy group) to switch policy leaf profiles on Cisco ACI fabrics.
      class Aci_switch_leaf_selector < Base
        # @return [Object, nil] The description to assign to the C(leaf).
        attribute :description

        # @return [String, nil] Name of the Leaf Profile to which we add a Selector.
        attribute :leaf_profile
        validates :leaf_profile, type: String

        # @return [String, nil] Name of Leaf Selector.
        attribute :leaf
        validates :leaf, type: String

        # @return [String, nil] Name of Node Block range to be added to Leaf Selector of given Leaf Profile.
        attribute :leaf_node_blk
        validates :leaf_node_blk, type: String

        # @return [Object, nil] The description to assign to the C(leaf_node_blk)
        attribute :leaf_node_blk_description

        # @return [Integer, nil] Start of Node Block range.
        attribute :from
        validates :from, type: Integer

        # @return [Integer, nil] Start of Node Block range.
        attribute :to
        validates :to, type: Integer

        # @return [String, nil] Name of the Policy Group to be added to Leaf Selector of given Leaf Profile.
        attribute :policy_group
        validates :policy_group, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Fabric interface policy leaf profile interface selectors on Cisco ACI fabrics.
      class Aci_access_port_to_interface_policy_leaf_profile < Base
        # @return [String] The name of the Fabric access policy leaf interface profile.
        attribute :leaf_interface_profile
        validates :leaf_interface_profile, presence: true, type: String

        # @return [String] The name of the Fabric access policy leaf interface profile access port selector.
        attribute :access_port_selector
        validates :access_port_selector, presence: true, type: String

        # @return [Object, nil] The description to assign to the C(access_port_selector)
        attribute :description

        # @return [String] The name of the Fabric access policy leaf interface profile access port block.
        attribute :leaf_port_blk
        validates :leaf_port_blk, presence: true, type: String

        # @return [Object, nil] The description to assign to the C(leaf_port_blk)
        attribute :leaf_port_blk_description

        # @return [Integer] The beginning (from-range) of the port range block for the leaf access port block.
        attribute :from_port
        validates :from_port, presence: true, type: Integer

        # @return [Integer] The end (to-range) of the port range block for the leaf access port block.
        attribute :to_port
        validates :to_port, presence: true, type: Integer

        # @return [Object, nil] The beginning (from-range) of the card range block for the leaf access port block.
        attribute :from_card

        # @return [Object, nil] The end (to-range) of the card range block for the leaf access port block.
        attribute :to_card

        # @return [String, nil] The name of the fabric access policy group to be associated with the leaf interface profile interface selector.
        attribute :policy_group
        validates :policy_group, type: String

        # @return [:fex, :port_channel, :switch_port, :vpc, nil] The type of interface for the static EPG deployement.
        attribute :interface_type
        validates :interface_type, expression_inclusion: {:in=>[:fex, :port_channel, :switch_port, :vpc], :message=>"%{value} needs to be :fex, :port_channel, :switch_port, :vpc"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

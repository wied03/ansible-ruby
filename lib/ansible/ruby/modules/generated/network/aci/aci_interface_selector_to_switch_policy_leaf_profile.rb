# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind interface selector profiles to switch policy leaf profiles on Cisco ACI fabrics.
      class Aci_interface_selector_to_switch_policy_leaf_profile < Base
        # @return [String, nil] Name of the Leaf Profile to which we add a Selector.
        attribute :leaf_profile
        validates :leaf_profile, type: String

        # @return [String, nil] Name of Interface Profile Selector to be added and associated with the Leaf Profile.
        attribute :interface_selector
        validates :interface_selector, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

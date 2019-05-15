# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage fabric interface policy leaf profiles on Cisco ACI fabrics.
      class Aci_interface_policy_leaf_profile < Base
        # @return [String] The name of the Fabric access policy leaf interface profile.
        attribute :leaf_interface_profile
        validates :leaf_interface_profile, presence: true, type: String

        # @return [String, nil] Description for the Fabric access policy leaf interface profile.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

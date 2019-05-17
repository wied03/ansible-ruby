# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage route tag policies on Cisco ACI fabrics.
      class Aci_l3out_route_tag_policy < Base
        # @return [String] The name of the route tag policy.
        attribute :rtp
        validates :rtp, presence: true, type: String

        # @return [String, nil] The description for the route tag policy.
        attribute :description
        validates :description, type: String

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [Integer, nil] The value of the route tag.,Accepted values range between C(0) and C(4294967295).,The APIC defaults to C(4294967295) when unset during creation.
        attribute :tag
        validates :tag, type: Integer

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

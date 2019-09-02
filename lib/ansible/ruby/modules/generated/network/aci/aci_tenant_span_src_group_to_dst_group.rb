# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind SPAN source groups to associated destinaton groups on Cisco ACI fabrics.
      class Aci_tenant_span_src_group_to_dst_group < Base
        # @return [String, nil] The description for Span source group to destination group binding.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The Span destination group to associate with the source group.
        attribute :dst_group
        validates :dst_group, type: String

        # @return [String, nil] The name of the Span source group.
        attribute :src_group
        validates :src_group, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] The name of the Tenant.
        attribute :tenant
        validates :tenant, type: String
      end
    end
  end
end

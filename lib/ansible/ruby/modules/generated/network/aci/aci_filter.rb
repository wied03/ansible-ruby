# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages top level filter objects on Cisco ACI fabrics.
      # This modules does not manage filter entries, see M(aci_filter_entry) for this functionality.
      class Aci_filter < Base
        # @return [String] The name of the filter.
        attribute :filter
        validates :filter, presence: true, type: String

        # @return [String, nil] Description for the filter.
        attribute :description
        validates :description, type: String

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end

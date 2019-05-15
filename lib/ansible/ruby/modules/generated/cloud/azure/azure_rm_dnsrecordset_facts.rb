# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific DNS Record Set in a Zone, or a specific type in all Zones or in one Zone etc.
      class Azure_rm_dnsrecordset_facts < Base
        # @return [String, nil] Only show results for a Record Set.
        attribute :relative_name
        validates :relative_name, type: String

        # @return [String, nil] Limit results by resource group. Required when filtering by name or type.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [String, nil] Limit results by zones. Required when filtering by name or type.
        attribute :zone_name
        validates :zone_name, type: String

        # @return [String, nil] Limit record sets by record type.
        attribute :record_type
        validates :record_type, type: String

        # @return [Integer, nil] Limit the maximum number of record sets to return
        attribute :top
        validates :top, type: Integer
      end
    end
  end
end

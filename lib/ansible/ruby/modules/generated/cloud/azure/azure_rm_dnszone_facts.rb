# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific DNS zone or all DNS zones within a resource group.
      class Azure_rm_dnszone_facts < Base
        # @return [String, nil] Limit results by resource group. Required when filtering by name.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [String, nil] Only show results for a specific zone.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end

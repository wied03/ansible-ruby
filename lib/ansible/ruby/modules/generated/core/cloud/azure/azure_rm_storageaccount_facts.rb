# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_storageaccount_facts < Base
        # @return [String, nil] Only show results for a specific account.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Limit results to a resource group. Required when filtering by name.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end

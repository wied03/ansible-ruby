# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_resouregroup_facts < Base
        # @return [String] Limit results to a specific resource group.
        attribute :name
        validates :name, type: String

        # @return [Array] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: Array
      end
    end
  end
end

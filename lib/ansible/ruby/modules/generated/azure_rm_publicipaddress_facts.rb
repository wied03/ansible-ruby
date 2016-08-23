# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_publicip_facts < Base
        # @return [String] Only show results for a specific Public IP.
        attribute :name
        validates :name, type: String

        # @return [String] Limit results by resource group. Required when using name parameter.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Object] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
      end
    end
  end
end

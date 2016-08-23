# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_securitygroup_facts < Base
        # @return [String, nil] Only show results for a specific security group.
        attribute :name
        validates :name, type: String

        # @return [String] Name of the resource group to use.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [Object, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
      end
    end
  end
end

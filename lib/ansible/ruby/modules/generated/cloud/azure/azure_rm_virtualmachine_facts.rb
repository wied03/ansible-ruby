# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for all virtual machines of a resource group.
      class Azure_rm_virtualmachine_facts < Base
        # @return [String, nil] Name of the resource group containing the virtual machines (required when filtering by vm name).
        attribute :resource_group
        validates :resource_group, type: String

        # @return [String, nil] Name of the virtual machine.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end

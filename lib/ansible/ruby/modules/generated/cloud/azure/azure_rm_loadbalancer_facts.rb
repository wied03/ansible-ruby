# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific load balancer or all load balancers.
      class Azure_rm_loadbalancer_facts < Base
        # @return [String, nil] Limit results to a specific resource group.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The resource group to search for the desired load balancer
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end

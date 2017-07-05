# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific public IP or all public IPs within a resource group.
      class Azure_rm_publicipaddress_facts < Base
        # @return [String, nil] Only show results for a specific Public IP.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Limit results by resource group. Required when using name parameter.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Object, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
      end
    end
  end
end

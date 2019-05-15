# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a Azure specific Traffic Manager profile or all Traffic Manager profiles.
      class Azure_rm_trafficmanagerprofile_facts < Base
        # @return [String, nil] Limit results to a specific Traffic Manager profile.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The resource group to search for the desired Traffic Manager profile
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end

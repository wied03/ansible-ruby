# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific Traffic Manager endpoints or all endpoints  in a Traffic Manager profile
      class Azure_rm_trafficmanagerendpoint_facts < Base
        # @return [String, nil] Limit results to a specific Traffic Manager endpoint.
        attribute :name
        validates :name, type: String

        # @return [String] The resource group to search for the desired Traffic Manager profile
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of Traffic Manager Profile
        attribute :profile_name
        validates :profile_name, presence: true, type: String

        # @return [:azure_endpoints, :external_endpoints, :nested_endpoints, nil] Type of endpoint.
        attribute :type
        validates :type, inclusion: {:in=>[:azure_endpoints, :external_endpoints, :nested_endpoints], :message=>"%{value} needs to be :azure_endpoints, :external_endpoints, :nested_endpoints"}, allow_nil: true
      end
    end
  end
end

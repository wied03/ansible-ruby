# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete a Traffic Manager profile.
      class Azure_rm_trafficmanagerprofile < Base
        # @return [String] Name of a resource group where the Traffic Manager profile exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the Traffic Manager profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the Traffic Manager profile. Use C(present) to create or update a Traffic Manager profile and C(absent) to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to 'global' because in default public Azure cloud, Traffic Manager profile can only be deployed globally.,Reference https://docs.microsoft.com/en-us/azure/traffic-manager/quickstart-create-traffic-manager-profile#create-a-traffic-manager-profile
        attribute :location
        validates :location, type: String

        # @return [:enabled, :disabled, nil] The status of the Traffic Manager profile.
        attribute :profile_status
        validates :profile_status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:performance, :priority, :weighted, :geographic, nil] The traffic routing method of the Traffic Manager profile.
        attribute :routing_method
        validates :routing_method, inclusion: {:in=>[:performance, :priority, :weighted, :geographic], :message=>"%{value} needs to be :performance, :priority, :weighted, :geographic"}, allow_nil: true

        # @return [Hash, nil] The DNS settings of the Traffic Manager profile.
        attribute :dns_config
        validates :dns_config, type: Hash

        # @return [Array<String>, String, nil] The endpoint monitoring settings of the Traffic Manager profile.
        attribute :monitor_config
        validates :monitor_config, type: TypeGeneric.new(String)
      end
    end
  end
end

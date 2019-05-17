# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of App Service Plan.
      class Azure_rm_appserviceplan < Base
        # @return [String] Name of the resource group to which the resource belongs.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Unique name of the app service plan to create or update.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Resource location. If not set, location from the resource group will be used as default.
        attribute :location
        validates :location, type: String

        # @return [String, nil] The pricing tiers, e.g., F1, D1, B1, B2, B3, S1, P1, P1V2 etc.,Please see U(https://azure.microsoft.com/en-us/pricing/details/app-service/plans/) for more detail.,For linux app service plan, please see U(https://azure.microsoft.com/en-us/pricing/details/app-service/linux/) for more detail.
        attribute :sku
        validates :sku, type: String

        # @return [Symbol, nil] Describe whether to host webapp on Linux worker.
        attribute :is_linux
        validates :is_linux, type: Symbol

        # @return [Integer, nil] Describe number of workers to be allocated.
        attribute :number_of_workers
        validates :number_of_workers, type: Integer

        # @return [:absent, :present, nil] Assert the state of the app service plan.,Use 'present' to create or update an app service plan and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

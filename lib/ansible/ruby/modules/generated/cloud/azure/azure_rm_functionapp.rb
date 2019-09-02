# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete an Azure Function App
      class Azure_rm_functionapp < Base
        # @return [String] Name of resource group
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the Azure Function App
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Valid Azure location. Defaults to location of the resource group.
        attribute :location

        # @return [Object] Name of the storage account to use.
        attribute :storage_account
        validates :storage_account, presence: true

        # @return [Hash, nil] Dictionary containing application settings
        attribute :app_settings
        validates :app_settings, type: Hash

        # @return [:absent, :present, nil] Assert the state of the Function App. Use 'present' to create or update a Function App and 'absent' to delete.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

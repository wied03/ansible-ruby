# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_storageaccount < Base
        # @return [String] Name of the resource group to use.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String, nil] Name of the storage account to update or create.
        attribute :name
        validates :name, type: String

        # @return [:absent, :present, nil] Assert the state of the storage account. Use 'present' to create or update a storage account and 'absent' to delete an account.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [:Premium_LRS, :Standard_GRS, :Standard_LRS, :Standard_RAGRS, :Standard_ZRS, nil] Type of storage account. Required when creating a storage account. NOTE: Standard_ZRS and Premium_LRS accounts cannot be changed to other account types, and other account types cannot be changed to Standard_ZRS or Premium_LRS.
        attribute :account_type
        validates :account_type, inclusion: {:in=>[:Premium_LRS, :Standard_GRS, :Standard_LRS, :Standard_RAGRS, :Standard_ZRS], :message=>"%{value} needs to be :Premium_LRS, :Standard_GRS, :Standard_LRS, :Standard_RAGRS, :Standard_ZRS"}, allow_nil: true

        # @return [Object, nil] User domain assigned to the storage account. Must be a dictionary with 'name' and 'use_sub_domain' keys where 'name' is the CNAME source. Only one custom domain is supported per storage account at this time. To clear the existing custom domain, use an empty string for the custom domain name property.,Can be added to an existing storage account. Will be ignored during storage account creation.
        attribute :custom_domain

        # @return [:Storage, :StorageBlob, nil] The 'kind' of storage.
        attribute :kind
        validates :kind, inclusion: {:in=>[:Storage, :StorageBlob], :message=>"%{value} needs to be :Storage, :StorageBlob"}, allow_nil: true
      end
    end
  end
end

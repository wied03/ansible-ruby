# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of Key Vault.
      class Azure_rm_keyvault < Base
        # @return [String] The name of the Resource Group to which the server belongs.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the vault
        attribute :vault_name
        validates :vault_name, presence: true, type: String

        # @return [Object, nil] Resource location. If not set, location from the resource group will be used as default.
        attribute :location

        # @return [String, nil] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
        attribute :vault_tenant
        validates :vault_tenant, type: String

        # @return [Hash, nil] SKU details
        attribute :sku
        validates :sku, type: Hash

        # @return [Array<Hash>, Hash, nil] An array of 0 to 16 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID.
        attribute :access_policies
        validates :access_policies, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
        attribute :enabled_for_deployment
        validates :enabled_for_deployment, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
        attribute :enabled_for_disk_encryption

        # @return [Object, nil] Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
        attribute :enabled_for_template_deployment

        # @return [Object, nil] Property to specify whether the soft delete functionality is enabled for this key vault.
        attribute :enable_soft_delete

        # @return [Object, nil] Create vault in recovery mode.
        attribute :recover_mode

        # @return [:absent, :present, nil] Assert the state of the KeyVault. Use 'present' to create or update an KeyVault and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

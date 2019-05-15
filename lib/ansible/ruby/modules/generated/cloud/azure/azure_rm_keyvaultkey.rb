# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a key within a given keyvault. By using Key Vault, you can encrypt keys and secrets (such as authentication keys, storage account keys, data encryption keys, .PFX files, and passwords).
      class Azure_rm_keyvaultkey < Base
        # @return [String] URI of the keyvault endpoint.
        attribute :keyvault_uri
        validates :keyvault_uri, presence: true, type: String

        # @return [String] Name of the keyvault key.
        attribute :key_name
        validates :key_name, presence: true, type: String

        # @return [Object, nil] BYOK file.
        attribute :byok_file

        # @return [Object, nil] PEM file.
        attribute :pem_file

        # @return [Object, nil] PEM password.
        attribute :pem_password

        # @return [:absent, :present, nil] Assert the state of the key. Use 'present' to create a key and 'absent' to delete a key.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a secret within a given keyvault. By using Key Vault, you can encrypt keys and secrets (such as authentication keys, storage account keys, data encryption keys, .PFX files, and passwords).
      class Azure_rm_keyvaultsecret < Base
        # @return [String] URI of the keyvault endpoint.
        attribute :keyvault_uri
        validates :keyvault_uri, presence: true, type: String

        # @return [String] Name of the keyvault secret.
        attribute :secret_name
        validates :secret_name, presence: true, type: String

        # @return [String, nil] Secret to be secured by keyvault.
        attribute :secret_value
        validates :secret_value, type: String

        # @return [:absent, :present, nil] Assert the state of the subnet. Use 'present' to create or update a secret and 'absent' to delete a secret .
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

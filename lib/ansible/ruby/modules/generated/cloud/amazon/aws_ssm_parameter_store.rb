# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage key-value pairs in aws parameter store.
      class Aws_ssm_parameter_store < Base
        # @return [String] parameter key name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] parameter key desciption.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Parameter value.
        attribute :value
        validates :value, type: String

        # @return [:present, :absent, nil] Creates or modifies an existing parameter,Deletes a parameter
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:String, :StringList, :SecureString, nil] Parameter String type
        attribute :string_type
        validates :string_type, expression_inclusion: {:in=>[:String, :StringList, :SecureString], :message=>"%{value} needs to be :String, :StringList, :SecureString"}, allow_nil: true

        # @return [Boolean, nil] Work with SecureString type to get plain text secrets,Boolean
        attribute :decryption
        validates :decryption, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] aws KMS key to decrypt the secrets.
        attribute :key_id
        validates :key_id, type: String

        # @return [:never, :changed, :always, nil] Option to overwrite an existing value if it already exists.,String
        attribute :overwrite_value
        validates :overwrite_value, expression_inclusion: {:in=>[:never, :changed, :always], :message=>"%{value} needs to be :never, :changed, :always"}, allow_nil: true

        # @return [Object, nil] region.
        attribute :region
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage role/user access to a KMS key. Not designed for encrypting/decrypting.
      class Aws_kms < Base
        # @return [:grant, :deny] Grant or deny access.
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:grant, :deny], :message=>"%{value} needs to be :grant, :deny"}

        # @return [String, nil] Alias label to the key. One of C(key_alias) or C(key_arn) are required.
        attribute :key_alias
        validates :key_alias, type: String

        # @return [Object, nil] Full ARN to the key. One of C(key_alias) or C(key_arn) are required.
        attribute :key_arn

        # @return [String, nil] Role to allow/deny access. One of C(role_name) or C(role_arn) are required.
        attribute :role_name
        validates :role_name, type: String

        # @return [Object, nil] ARN of role to allow/deny access. One of C(role_name) or C(role_arn) are required.
        attribute :role_arn

        # @return [Array<String>, String, nil] List of grants to give to user/role. Likely "role,role grant" or "role,role grant,admin". Required when C(mode=grant).
        attribute :grant_types
        validates :grant_types, type: TypeGeneric.new(String)

        # @return [Boolean, nil] If adding/removing a role and invalid grantees are found, remove them. These entries will cause an update to fail in all known cases.,Only cleans if changes are being made.
        attribute :clean_invalid_entries
        validates :clean_invalid_entries, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

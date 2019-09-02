# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage AWS IAM groups
      class Iam_group < Base
        # @return [String] The name of the group to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] A list of managed policy ARNs or friendly names to attach to the role. To embed an inline policy, use M(iam_policy).
        attribute :managed_policy
        validates :managed_policy, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of existing users to add as members of the group.
        attribute :users
        validates :users, type: TypeGeneric.new(String)

        # @return [:present, :absent] Create or remove the IAM group
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Boolean, nil] Deatach policy which not included in managed_policy list
        attribute :purge_policy
        validates :purge_policy, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Deatach users which not included in users list
        attribute :purge_users
        validates :purge_users, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

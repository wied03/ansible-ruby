# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage AWS IAM users
      class Iam_user < Base
        # @return [String] The name of the user to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] A list of managed policy ARNs or friendly names to attach to the user. To embed an inline policy, use M(iam_policy).
        attribute :managed_policy
        validates :managed_policy, type: TypeGeneric.new(String)

        # @return [:present, :absent] Create or remove the IAM user
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Boolean, nil] Detach policies which are not included in managed_policy list
        attribute :purge_policy
        validates :purge_policy, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

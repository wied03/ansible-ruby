# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage AWS IAM roles
      class Iam_role < Base
        # @return [String, nil] The path to the role. For more information about paths, see U(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html).
        attribute :path
        validates :path, type: String

        # @return [String] The name of the role to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The trust relationship policy document that grants an entity permission to assume the role.  This parameter is required when state: present.
        attribute :assume_role_policy_document
        validates :assume_role_policy_document, type: String

        # @return [Array<String>, String] A list of managed policy ARNs (can't use friendly names due to AWS API limitation) to attach to the role. To embed an inline policy, use M(iam_policy). To remove existing policies, use an empty list item.
        attribute :managed_policy
        validates :managed_policy, presence: true, type: TypeGeneric.new(String, NilClass)

        # @return [:present, :absent] Create or remove the IAM role
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end

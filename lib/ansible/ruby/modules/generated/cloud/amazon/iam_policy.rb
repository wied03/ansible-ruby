# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows uploading or removing IAM policies for IAM users, groups or roles.
      class Iam_policy < Base
        # @return [:user, :group, :role] Type of IAM resource
        attribute :iam_type
        validates :iam_type, presence: true, expression_inclusion: {:in=>[:user, :group, :role], :message=>"%{value} needs to be :user, :group, :role"}

        # @return [String] Name of IAM resource you wish to target for policy actions. In other words, the user name, group name or role name.
        attribute :iam_name
        validates :iam_name, presence: true, type: String

        # @return [String] The name label for the policy to create or remove.
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [String, nil] The path to the properly json formatted policy file (mutually exclusive with C(policy_json))
        attribute :policy_document
        validates :policy_document, type: String

        # @return [String, nil] A properly json formatted policy as string (mutually exclusive with C(policy_document), see https://github.com/ansible/ansible/issues/7005#issuecomment-42894813 on how to use it properly)
        attribute :policy_json
        validates :policy_json, type: String

        # @return [:present, :absent] Whether to create or delete the IAM policy.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] By default the module looks for any policies that match the document you pass in, if there is a match it will not make a new policy object with the same rules. You can override this by specifying false which would allow for two policy objects with different names but same rules.
        attribute :skip_duplicates
        validates :skip_duplicates, type: String
      end
    end
  end
end

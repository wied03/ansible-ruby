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

        # @return [String, nil] Provide a description of the new role
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Add the ARN of an IAM managed policy to restrict the permissions this role can pass on to IAM roles/users that it creates.,Boundaries cannot be set on Instance Profiles, so if this option is specified then C(create_instance_profile) must be false.,This is intended for roles/users that have permissions to create new IAM objects.,For more information on boundaries, see U(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
        attribute :boundary

        # @return [String, nil] The trust relationship policy document that grants an entity permission to assume the role.,This parameter is required when C(state=present).
        attribute :assume_role_policy_document
        validates :assume_role_policy_document, type: String

        # @return [Array<String>, String, nil] A list of managed policy ARNs or, since Ansible 2.4, a list of either managed policy ARNs or friendly names. To embed an inline policy, use M(iam_policy). To remove existing policies, use an empty list item.
        attribute :managed_policy
        validates :managed_policy, type: TypeGeneric.new(String, NilClass)

        # @return [Boolean, nil] Detaches any managed policies not listed in the "managed_policy" option. Set to false if you want to attach policies elsewhere.
        attribute :purge_policies
        validates :purge_policies, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Create or remove the IAM role
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Creates an IAM instance profile along with the role
        attribute :create_instance_profile
        validates :create_instance_profile, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

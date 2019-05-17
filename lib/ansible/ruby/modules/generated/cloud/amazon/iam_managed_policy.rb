# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows creating and removing managed IAM policies
      class Iam_managed_policy < Base
        # @return [String] The name of the managed policy.
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [String, nil] A helpful description of this policy, this value is immuteable and only set when creating a new policy.
        attribute :policy_description
        validates :policy_description, type: String

        # @return [Array<String>, String, nil] A properly json formatted policy
        attribute :policy
        validates :policy, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Make this revision the default revision.
        attribute :make_default
        validates :make_default, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] Remove all other non default revisions, if this is used with C(make_default) it will result in all other versions of this policy being deleted.
        attribute :only_version
        validates :only_version, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Should this managed policy be present or absent. Set to absent to detach all entities from this policy and remove it if found.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

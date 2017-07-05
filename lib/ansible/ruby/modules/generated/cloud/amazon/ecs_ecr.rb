# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Elastic Container Registry repositories
      class Ecs_ecr < Base
        # @return [String] the name of the repository
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] AWS account id associated with the registry.,If not specified, the default registry is assumed.
        attribute :registry_id
        validates :registry_id, type: String

        # @return [Hash, String, nil] JSON or dict that represents the new policy
        attribute :policy
        validates :policy, type: MultipleTypes.new(Hash, String)

        # @return [Boolean, nil] if no, prevents setting a policy that would prevent you from setting another policy in the future.
        attribute :force_set_policy
        validates :force_set_policy, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] if yes, remove the policy from the repository
        attribute :delete_policy
        validates :delete_policy, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] create or destroy the repository
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

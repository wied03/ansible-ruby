# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure L4PolicySet object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_l4policyset < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Creator name.,Field introduced in 17.2.7.
        attribute :created_by

        # @return [Object, nil] Field introduced in 17.2.7.
        attribute :description

        # @return [Symbol, nil] Field introduced in 17.2.7.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :is_internal_policy
        validates :is_internal_policy, type: Symbol

        # @return [Object, nil] Policy to apply when a new transport connection is setup.,Field introduced in 17.2.7.
        attribute :l4_connection_policy

        # @return [String] Name of the l4 policy set.,Field introduced in 17.2.7.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.2.7.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Id of the l4 policy set.,Field introduced in 17.2.7.
        attribute :uuid
      end
    end
  end
end

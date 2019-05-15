# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure VSDataScriptSet object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_vsdatascriptset < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Creator name.,Field introduced in 17.1.11,17.2.4.
        attribute :created_by

        # @return [Object, nil] Datascripts to execute.
        attribute :datascript

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Uuid of ip groups that could be referred by vsdatascriptset objects.,It is a reference to an object of type ipaddrgroup.
        attribute :ipgroup_refs

        # @return [String] Name for the virtual service datascript collection.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Uuid of pool groups that could be referred by vsdatascriptset objects.,It is a reference to an object of type poolgroup.
        attribute :pool_group_refs

        # @return [Object, nil] Uuid of pools that could be referred by vsdatascriptset objects.,It is a reference to an object of type pool.
        attribute :pool_refs

        # @return [Object, nil] Uuid of string groups that could be referred by vsdatascriptset objects.,It is a reference to an object of type stringgroup.
        attribute :string_group_refs

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the virtual service datascript collection.
        attribute :uuid
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Network object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_network < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] List of subnet.
        attribute :configured_subnets

        # @return [Symbol, nil] Select the ip address management scheme for this network.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :dhcp_enabled
        validates :dhcp_enabled, type: Symbol

        # @return [Symbol, nil] When selected, excludes all discovered subnets in this network from consideration for virtual service placement.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_discovered_subnets
        validates :exclude_discovered_subnets, type: Symbol

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Symbol, nil] Boolean flag to set synced_from_se.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :synced_from_se
        validates :synced_from_se, type: Symbol

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid

        # @return [Symbol, nil] Boolean flag to set vcenter_dvs.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :vcenter_dvs
        validates :vcenter_dvs, type: Symbol

        # @return [Object, nil] It is a reference to an object of type vimgrnwruntime.
        attribute :vimgrnw_ref

        # @return [Object, nil] It is a reference to an object of type vrfcontext.
        attribute :vrf_context_ref
      end
    end
  end
end

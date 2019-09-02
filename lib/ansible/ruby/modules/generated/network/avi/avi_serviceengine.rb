# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ServiceEngine object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_serviceengine < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Availability_zone of serviceengine.
        attribute :availability_zone

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Symbol, nil] Boolean flag to set container_mode.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :container_mode
        validates :container_mode, type: Symbol

        # @return [Object, nil] Enum options - container_type_bridge, container_type_host, container_type_host_dpdk.,Default value when not specified in API or module is interpreted by Avi Controller as CONTAINER_TYPE_HOST.
        attribute :container_type

        # @return [Symbol, nil] Boolean flag to set controller_created.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :controller_created
        validates :controller_created, type: Symbol

        # @return [Object, nil] Controller_ip of serviceengine.
        attribute :controller_ip

        # @return [Object, nil] List of vnic.
        attribute :data_vnics

        # @return [Object, nil] Inorder to disable se set this field appropriately.,Enum options - SE_STATE_ENABLED, SE_STATE_DISABLED_FOR_PLACEMENT, SE_STATE_DISABLED, SE_STATE_DISABLED_FORCE.,Default value when not specified in API or module is interpreted by Avi Controller as SE_STATE_ENABLED.
        attribute :enable_state

        # @return [Object, nil] Flavor of serviceengine.
        attribute :flavor

        # @return [Object, nil] It is a reference to an object of type vimgrhostruntime.
        attribute :host_ref

        # @return [Object, nil] Enum options - default, vmware_esx, kvm, vmware_vsan, xen.
        attribute :hypervisor

        # @return [Object, nil] Vnic settings for serviceengine.
        attribute :mgmt_vnic

        # @return [String, nil] Name of the object.,Default value when not specified in API or module is interpreted by Avi Controller as VM name unknown.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Seresources settings for serviceengine.
        attribute :resources

        # @return [Object, nil] It is a reference to an object of type serviceenginegroup.
        attribute :se_group_ref

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end

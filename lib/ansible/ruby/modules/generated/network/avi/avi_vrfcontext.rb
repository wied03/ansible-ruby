# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure VrfContext object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_vrfcontext < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Bgp local and peer info.
        attribute :bgp_profile

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] Configure debug flags for vrf.,Field introduced in 17.1.1.
        attribute :debugvrfcontext

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Configure ping based heartbeat check for gateway in service engines of vrf.
        attribute :gateway_mon

        # @return [Object, nil] Configure ping based heartbeat check for all default gateways in service engines of vrf.,Field introduced in 17.1.1.
        attribute :internal_gateway_monitor

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] List of staticroute.
        attribute :static_routes

        # @return [Object, nil] Boolean flag to set system_default.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :system_default

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

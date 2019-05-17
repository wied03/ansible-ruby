# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure VsVip object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_vsvip < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] It is a reference to an object of type cloud.,Field introduced in 17.1.1.
        attribute :cloud_ref

        # @return [Object, nil] Service discovery specific data including fully qualified domain name, type and time-to-live of the dns record.,Field introduced in 17.1.1.
        attribute :dns_info

        # @return [Symbol, nil] Force placement on all service engines in the service engine group (container clouds only).,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :east_west_placement
        validates :east_west_placement, type: Symbol

        # @return [String] Name for the vsvip object.,Field introduced in 17.1.1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.1.1.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the vsvip object.,Field introduced in 17.1.1.
        attribute :uuid

        # @return [Object, nil] List of virtual service ips and other shareable entities.,Field introduced in 17.1.1.
        attribute :vip

        # @return [Object, nil] Virtual routing context that the virtual service is bound to.,This is used to provide the isolation of the set of networks the application is attached to.,It is a reference to an object of type vrfcontext.,Field introduced in 17.1.1.
        attribute :vrf_context_ref
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure HTTPPolicySet object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_httppolicyset < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Checksum of cloud configuration for pool.,Internally set by cloud connector.
        attribute :cloud_config_cksum

        # @return [Object, nil] Creator name.
        attribute :created_by

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [NilClass, nil] Http request policy for the virtual service.
        attribute :http_request_policy
        validates :http_request_policy, type: NilClass

        # @return [Object, nil] Http response policy for the virtual service.
        attribute :http_response_policy

        # @return [Object, nil] Http security policy for the virtual service.
        attribute :http_security_policy

        # @return [Symbol, nil] Boolean flag to set is_internal_policy.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :is_internal_policy
        validates :is_internal_policy, type: Symbol

        # @return [String] Name of the http policy set.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the http policy set.
        attribute :uuid
      end
    end
  end
end

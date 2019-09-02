# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure TrafficCloneProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_trafficcloneprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Field introduced in 17.1.1.
        attribute :clone_servers

        # @return [Object, nil] It is a reference to an object of type cloud.,Field introduced in 17.1.1.
        attribute :cloud_ref

        # @return [String] Name for the traffic clone profile.,Field introduced in 17.1.1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Symbol, nil] Specifies if client ip needs to be preserved to clone destination.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :preserve_client_ip
        validates :preserve_client_ip, type: Symbol

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.1.1.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the traffic clone profile.,Field introduced in 17.1.1.
        attribute :uuid
      end
    end
  end
end

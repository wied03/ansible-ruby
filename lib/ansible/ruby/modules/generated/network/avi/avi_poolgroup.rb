# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure PoolGroup object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_poolgroup < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Checksum of cloud configuration for poolgroup.,Internally set by cloud connector.
        attribute :cloud_config_cksum

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] Name of the user who created the object.
        attribute :created_by

        # @return [Object, nil] When setup autoscale manager will automatically promote new pools into production when deployment goals are met.,It is a reference to an object of type poolgroupdeploymentpolicy.
        attribute :deployment_policy_ref

        # @return [Object, nil] Description of pool group.
        attribute :description

        # @return [Object, nil] Enable an action - close connection, http redirect, or local http response - when a pool group failure happens.,By default, a connection will be closed, in case the pool group experiences a failure.
        attribute :fail_action

        # @return [Symbol, nil] Whether an implicit set of priority labels is generated.,Field introduced in 17.1.9,17.2.3.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :implicit_priority_labels
        validates :implicit_priority_labels, type: Symbol

        # @return [Object, nil] List of pool group members object of type poolgroupmember.
        attribute :members

        # @return [Object, nil] The minimum number of servers to distribute traffic to.,Allowed values are 1-65535.,Special values are 0 - 'disable'.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :min_servers

        # @return [String] The name of the pool group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Uuid of the priority labels.,If not provided, pool group member priority label will be interpreted as a number with a larger number considered higher priority.,It is a reference to an object of type prioritylabels.
        attribute :priority_labels_ref

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the pool group.
        attribute :uuid
      end
    end
  end
end

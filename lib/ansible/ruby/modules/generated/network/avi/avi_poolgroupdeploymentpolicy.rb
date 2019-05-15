# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure PoolGroupDeploymentPolicy object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_poolgroupdeploymentpolicy < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] It will automatically disable old production pools once there is a new production candidate.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :auto_disable_old_prod_pools

        # @return [Object, nil] It is a reference to an object of type cloud.
        attribute :cloud_ref

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Duration of evaluation period for automatic deployment.,Allowed values are 60-86400.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :evaluation_duration

        # @return [String] The name of the pool group deployment policy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] List of pgdeploymentrule.
        attribute :rules

        # @return [Object, nil] Deployment scheme.,Enum options - BLUE_GREEN, CANARY.,Default value when not specified in API or module is interpreted by Avi Controller as BLUE_GREEN.
        attribute :scheme

        # @return [Object, nil] Target traffic ratio before pool is made production.,Allowed values are 1-100.,Default value when not specified in API or module is interpreted by Avi Controller as 100.,Units(RATIO).
        attribute :target_test_traffic_ratio

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Ratio of the traffic that is sent to the pool under test.,Test ratio of 100 means blue green.,Allowed values are 1-100.,Default value when not specified in API or module is interpreted by Avi Controller as 100.
        attribute :test_traffic_ratio_rampup

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the pool group deployment policy.
        attribute :uuid

        # @return [Object, nil] Webhook configured with url that avi controller will pass back information about pool group, old and new pool information and current deployment,rule results.,It is a reference to an object of type webhook.,Field introduced in 17.1.1.
        attribute :webhook_ref
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ServerAutoScalePolicy object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_serverautoscalepolicy < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Symbol, nil] Use avi intelligent autoscale algorithm where autoscale is performed by comparing load on the pool against estimated capacity of all the servers.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :intelligent_autoscale
        validates :intelligent_autoscale, type: Symbol

        # @return [Object, nil] Maximum extra capacity as percentage of load used by the intelligent scheme.,Scalein is triggered when available capacity is more than this margin.,Allowed values are 1-99.,Default value when not specified in API or module is interpreted by Avi Controller as 40.
        attribute :intelligent_scalein_margin

        # @return [Object, nil] Minimum extra capacity as percentage of load used by the intelligent scheme.,Scaleout is triggered when available capacity is less than this margin.,Allowed values are 1-99.,Default value when not specified in API or module is interpreted by Avi Controller as 20.
        attribute :intelligent_scaleout_margin

        # @return [Object, nil] Maximum number of servers to scalein simultaneously.,The actual number of servers to scalein is chosen such that target number of servers is always more than or equal to the min_size.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :max_scalein_adjustment_step

        # @return [Object, nil] Maximum number of servers to scaleout simultaneously.,The actual number of servers to scaleout is chosen such that target number of servers is always less than or equal to the max_size.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :max_scaleout_adjustment_step

        # @return [Object, nil] Maximum number of servers after scaleout.,Allowed values are 0-400.
        attribute :max_size

        # @return [Object, nil] No scale-in happens once number of operationally up servers reach min_servers.,Allowed values are 0-400.
        attribute :min_size

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Trigger scalein when alerts due to any of these alert configurations are raised.,It is a reference to an object of type alertconfig.
        attribute :scalein_alertconfig_refs

        # @return [Object, nil] Cooldown period during which no new scalein is triggered to allow previous scalein to successfully complete.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :scalein_cooldown

        # @return [Object, nil] Trigger scaleout when alerts due to any of these alert configurations are raised.,It is a reference to an object of type alertconfig.
        attribute :scaleout_alertconfig_refs

        # @return [Object, nil] Cooldown period during which no new scaleout is triggered to allow previous scaleout to successfully complete.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :scaleout_cooldown

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Symbol, nil] Use predicted load rather than current load.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :use_predicted_load
        validates :use_predicted_load, type: Symbol

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end

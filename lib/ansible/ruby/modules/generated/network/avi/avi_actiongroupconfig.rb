# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ActionGroupConfig object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_actiongroupconfig < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Reference of the action script configuration to be used.,It is a reference to an object of type alertscriptconfig.
        attribute :action_script_config_ref

        # @return [Symbol, nil] Trigger notification to autoscale manager.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :autoscale_trigger_notification
        validates :autoscale_trigger_notification, type: Symbol

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Select the email notification configuration to use when sending alerts via email.,It is a reference to an object of type alertemailconfig.
        attribute :email_config_ref

        # @return [Symbol] Generate alert only to external destinations.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :external_only
        validates :external_only, presence: true, type: Symbol

        # @return [Object] When an alert is generated, mark its priority via the alert level.,Enum options - ALERT_LOW, ALERT_MEDIUM, ALERT_HIGH.,Default value when not specified in API or module is interpreted by Avi Controller as ALERT_LOW.
        attribute :level
        validates :level, presence: true

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Select the snmp trap notification to use when sending alerts via snmp trap.,It is a reference to an object of type snmptrapprofile.
        attribute :snmp_trap_profile_ref

        # @return [Object, nil] Select the syslog notification configuration to use when sending alerts via syslog.,It is a reference to an object of type alertsyslogconfig.
        attribute :syslog_config_ref

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

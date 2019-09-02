# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Scheduler object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_scheduler < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Backup configuration to be executed by this scheduler.,It is a reference to an object of type backupconfiguration.
        attribute :backup_config_ref

        # @return [Symbol, nil] Boolean flag to set enabled.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Object, nil] Scheduler end date and time.
        attribute :end_date_time

        # @return [Object, nil] Frequency at which custom scheduler will run.,Allowed values are 0-60.
        attribute :frequency

        # @return [Object, nil] Unit at which custom scheduler will run.,Enum options - SCHEDULER_FREQUENCY_UNIT_MIN, SCHEDULER_FREQUENCY_UNIT_HOUR, SCHEDULER_FREQUENCY_UNIT_DAY, SCHEDULER_FREQUENCY_UNIT_WEEK,,SCHEDULER_FREQUENCY_UNIT_MONTH.
        attribute :frequency_unit

        # @return [String] Name of scheduler.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Scheduler run mode.,Enum options - RUN_MODE_PERIODIC, RUN_MODE_AT, RUN_MODE_NOW.
        attribute :run_mode

        # @return [Object, nil] Control script to be executed by this scheduler.,It is a reference to an object of type alertscriptconfig.
        attribute :run_script_ref

        # @return [Object, nil] Define scheduler action.,Enum options - SCHEDULER_ACTION_RUN_A_SCRIPT, SCHEDULER_ACTION_BACKUP.,Default value when not specified in API or module is interpreted by Avi Controller as SCHEDULER_ACTION_BACKUP.
        attribute :scheduler_action

        # @return [Object, nil] Scheduler start date and time.
        attribute :start_date_time

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

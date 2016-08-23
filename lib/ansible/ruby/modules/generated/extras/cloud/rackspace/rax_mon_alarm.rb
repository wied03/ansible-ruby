# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_mon_alarm < Base
        # @return [:present, :absent, nil] Ensure that the alarm with this C(label) exists or does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Friendly name for this alarm, used to achieve idempotence. Must be a String between 1 and 255 characters long.
        attribute :label
        validates :label, presence: true

        # @return [Object] ID of the entity this alarm is attached to. May be acquired by registering the value of a rax_mon_entity task.
        attribute :entity_id
        validates :entity_id, presence: true

        # @return [Object] ID of the check that should be alerted on. May be acquired by registering the value of a rax_mon_check task.
        attribute :check_id
        validates :check_id, presence: true

        # @return [Object] ID of the notification plan to trigger if this alarm fires. May be acquired by registering the value of a rax_mon_notification_plan task.
        attribute :notification_plan_id
        validates :notification_plan_id, presence: true

        # @return [Object] Alarm DSL that describes alerting conditions and their output states. Must be between 1 and 16384 characters long. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/alerts-language.html for a reference on the alerting language.
        attribute :criteria

        # @return [:yes, :no, nil] If yes, create this alarm, but leave it in an inactive state. Defaults to no.
        attribute :disabled
        validates :disabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Arbitrary key/value pairs to accompany the alarm. Must be a hash of String keys and values between 1 and 255 characters long.
        attribute :metadata
      end
    end
  end
end

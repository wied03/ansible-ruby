# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_mon_notification_plan < Base
        # @return [:present, :absent, nil] Ensure that the notification plan with this C(label) exists or does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Defines a friendly name for this notification plan. String between 1 and 255 characters long.
        attribute :label
        validates :label, presence: true

        # @return [Object] Notification list to use when the alarm state is CRITICAL. Must be an array of valid rax_mon_notification ids.
        attribute :critical_state

        # @return [Object] Notification list to use when the alarm state is WARNING. Must be an array of valid rax_mon_notification ids.
        attribute :warning_state

        # @return [Object] Notification list to use when the alarm state is OK. Must be an array of valid rax_mon_notification ids.
        attribute :ok_state
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a Rackspace Cloud Monitoring notification that specifies a channel that can be used to communicate alarms, such as email, webhooks, or PagerDuty. Rackspace monitoring module flow | rax_mon_entity -> rax_mon_check -> *rax_mon_notification* -> rax_mon_notification_plan -> rax_mon_alarm
      class Rax_mon_notification < Base
        # @return [:present, :absent, nil] Ensure that the notification with this C(label) exists or does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Defines a friendly name for this notification. String between 1 and 255 characters long.
        attribute :label
        validates :label, presence: true

        # @return [:webhook, :email, :pagerduty] A supported notification type.
        attribute :notification_type
        validates :notification_type, presence: true, inclusion: {:in=>[:webhook, :email, :pagerduty], :message=>"%{value} needs to be :webhook, :email, :pagerduty"}

        # @return [Object] Dictionary of key-value pairs used to initialize the notification. Required keys and meanings vary with notification type. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/ service-notification-types-crud.html for details.
        attribute :details
        validates :details, presence: true
      end
    end
  end
end

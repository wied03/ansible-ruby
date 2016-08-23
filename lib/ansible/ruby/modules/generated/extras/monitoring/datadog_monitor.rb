# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Datadog_monitor < Base
        # @return [Object] Your DataDog API key.
        attribute :api_key
        validates :api_key, presence: true

        # @return [Object] Your DataDog app key.
        attribute :app_key
        validates :app_key, presence: true

        # @return [Object] The designated state of the monitor.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :muted, :unmuted], :message=>"%{value} needs to be :present, :absent, :muted, :unmuted"}

        # @return [Object] The type of the monitor.,The 'event alert'is available starting at Ansible 2.1
        attribute :type
        validates :type, inclusion: {:in=>[:"metric alert", :"service check", :"event alert"], :message=>"%{value} needs to be :\"metric alert\", :\"service check\", :\"event alert\""}, allow_nil: true

        # @return [Object] The monitor query to notify on with syntax varying depending on what type of monitor you are creating.
        attribute :query

        # @return [Object] The name of the alert.
        attribute :name
        validates :name, presence: true

        # @return [Object] A message to include with notifications for this monitor. Email notifications can be sent to specific users by using the same '@username' notation as events.
        attribute :message

        # @return [String] Dictionary of scopes to timestamps or None. Each scope will be muted until the given POSIX timestamp or forever if the value is None. 
        attribute :silenced
        validates :silenced, type: String

        # @return [Object] A boolean indicating whether this monitor will notify when data stops reporting..
        attribute :notify_no_data

        # @return [Array<String>] The number of minutes before a monitor will notify when data stops reporting. Must be at least 2x the monitor timeframe for metric alerts or 2 minutes for service checks.
        attribute :no_data_timeframe, flat_array: true
        validates :no_data_timeframe, type: TypeGeneric.new(String)

        # @return [Object] The number of hours of the monitor not reporting data before it will automatically resolve from a triggered state.
        attribute :timeout_h

        # @return [Object] The number of minutes after the last notification before a monitor will re-notify on the current status. It will only re-notify if it's not resolved.
        attribute :renotify_interval

        # @return [Object] A message to include with a re-notification. Supports the '@username' notification we allow elsewhere. Not applicable if renotify_interval is None
        attribute :escalation_message

        # @return [Object] A boolean indicating whether tagged users will be notified on changes to this monitor.
        attribute :notify_audit

        # @return [Hash] A dictionary of thresholds by status. This option is only available for service checks and metric alerts. Because each of them can have multiple thresholds, we don't define them directly in the query.
        attribute :thresholds
        validates :thresholds, type: Hash
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages monitors within Datadog
      # Options like described on http://docs.datadoghq.com/api/
      class Datadog_monitor < Base
        # @return [String] Your DataDog API key.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Your DataDog app key.
        attribute :app_key
        validates :app_key, presence: true, type: String

        # @return [:present, :absent, :mute, :unmute] The designated state of the monitor.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent, :mute, :unmute], :message=>"%{value} needs to be :present, :absent, :mute, :unmute"}

        # @return [Object, nil] A list of tags to associate with your monitor when creating or updating. This can help you categorize and filter monitors.
        attribute :tags

        # @return [:"metric alert", :"service check", :"event alert", nil] The type of the monitor.,The 'event alert'is available starting at Ansible 2.1
        attribute :type
        validates :type, expression_inclusion: {:in=>[:"metric alert", :"service check", :"event alert"], :message=>"%{value} needs to be :\"metric alert\", :\"service check\", :\"event alert\""}, allow_nil: true

        # @return [String, nil] The monitor query to notify on with syntax varying depending on what type of monitor you are creating.
        attribute :query
        validates :query, type: String

        # @return [String] The name of the alert.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A message to include with notifications for this monitor. Email notifications can be sent to specific users by using the same '@username' notation as events. Monitor message template variables can be accessed by using double square brackets, i.e '[[' and ']]'.
        attribute :message
        validates :message, type: String

        # @return [String, nil] Dictionary of scopes to timestamps or None. Each scope will be muted until the given POSIX timestamp or forever if the value is None. 
        attribute :silenced
        validates :silenced, type: String

        # @return [:yes, :no, nil] A boolean indicating whether this monitor will notify when data stops reporting..
        attribute :notify_no_data
        validates :notify_no_data, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] The number of minutes before a monitor will notify when data stops reporting. Must be at least 2x the monitor timeframe for metric alerts or 2 minutes for service checks.
        attribute :no_data_timeframe
        validates :no_data_timeframe, type: Integer

        # @return [Object, nil] The number of hours of the monitor not reporting data before it will automatically resolve from a triggered state.
        attribute :timeout_h

        # @return [Object, nil] The number of minutes after the last notification before a monitor will re-notify on the current status. It will only re-notify if it's not resolved.
        attribute :renotify_interval

        # @return [Object, nil] A message to include with a re-notification. Supports the '@username' notification we allow elsewhere. Not applicable if renotify_interval is None
        attribute :escalation_message

        # @return [:yes, :no, nil] A boolean indicating whether tagged users will be notified on changes to this monitor.
        attribute :notify_audit
        validates :notify_audit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] A dictionary of thresholds by status. This option is only available for service checks and metric alerts. Because each of them can have multiple thresholds, we don't define them directly in the query."]
        attribute :thresholds
        validates :thresholds, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] A boolean indicating whether changes to this monitor should be restricted to the creator or admins.
        attribute :locked
        validates :locked, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] A boolean indicating whether this monitor needs a full window of data before it's evaluated. We highly recommend you set this to False for sparse metrics, otherwise some evaluations will be skipped.
        attribute :require_full_window

        # @return [Object, nil] A positive integer representing the number of seconds to wait before evaluating the monitor for new hosts. This gives the host time to fully initialize.
        attribute :new_host_delay

        # @return [Object, nil] Time to delay evaluation (in seconds). It is effective for sparse values.
        attribute :evaluation_delay

        # @return [Object, nil] The id of the alert. If set, will be used instead of the name to locate the alert.
        attribute :id
      end
    end
  end
end

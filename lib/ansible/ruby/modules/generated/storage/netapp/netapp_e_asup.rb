# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allow the auto-support settings to be configured for an individual E-Series storage-system
      class Netapp_e_asup < Base
        # @return [:enabled, :disabled, nil] Enable/disable the E-Series auto-support configuration.,When this option is enabled, configuration, logs, and other support-related information will be relayed to NetApp to help better support your system. No personally identifiable information, passwords, etc, will be collected.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Boolean, nil] Enable active/proactive monitoring for ASUP. When a problem is detected by our monitoring systems, it's possible that the bundle did not contain all of the required information at the time of the event. Enabling this option allows NetApp support personnel to manually request transmission or re-transmission of support data in order ot resolve the problem.,Only applicable if I(state=enabled).
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] A start hour may be specified in a range from 0 to 23 hours.,ASUP bundles will be sent daily between the provided start and end time (UTC).,I(start) must be less than I(end).
        attribute :start
        validates :start, type: Integer

        # @return [Integer, nil] An end hour may be specified in a range from 1 to 24 hours.,ASUP bundles will be sent daily between the provided start and end time (UTC).,I(start) must be less than I(end).
        attribute :end
        validates :end, type: Integer

        # @return [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, nil] A list of days of the week that ASUP bundles will be sent. A larger, weekly bundle will be sent on one of the provided days.
        attribute :days
        validates :days, expression_inclusion: {:in=>[:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday], :message=>"%{value} needs to be :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday"}, allow_nil: true

        # @return [Symbol, nil] Provide the full ASUP configuration in the return.
        attribute :verbose
        validates :verbose, type: Symbol

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end

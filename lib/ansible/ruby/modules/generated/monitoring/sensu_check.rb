# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the checks that should be run on a machine by I(Sensu).
      # Most options do not have a default and will not be added to the check definition unless specified.
      # All defaults except I(path), I(state), I(backup) and I(metric) are not managed by this module,
      # they are simply specified for your convenience.
      class Sensu_check < Base
        # @return [String] The name of the check,This is the key that is used to determine whether a check exists
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the check should be present or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Path to the json file of the check to be added/removed.,Will be created if it does not exist (unless I(state=absent)).,The parent folders need to exist when I(state=present), otherwise an error will be thrown
        attribute :path
        validates :path, type: String

        # @return [Boolean, nil] Create a backup file (if yes), including the timestamp information so,you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Path to the sensu check to run (not required when I(state=absent))
        attribute :command
        validates :command, presence: true, type: String

        # @return [Object, nil] List of handlers to notify when the check fails
        attribute :handlers

        # @return [Object, nil] List of subscribers/channels this check should run for,See sensu_subscribers to subscribe a machine to a channel
        attribute :subscribers

        # @return [Integer, nil] Check interval in seconds
        attribute :interval
        validates :interval, type: Integer

        # @return [Integer, nil] Timeout for the check
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Boolean, nil] Whether the check should be handled or not
        attribute :handle
        validates :handle, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] When to disable handling of check failures
        attribute :subdue_begin

        # @return [Object, nil] When to enable handling of check failures
        attribute :subdue_end

        # @return [Object, nil] Other checks this check depends on, if dependencies fail,,handling of this check will be disabled
        attribute :dependencies

        # @return [Boolean, nil] Whether the check is a metric
        attribute :metric
        validates :metric, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether the check should be scheduled by the sensu client or server,This option obviates the need for specifying the I(subscribers) option
        attribute :standalone
        validates :standalone, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether the check should be scheduled at all.,You can still issue it via the sensu api
        attribute :publish
        validates :publish, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Number of event occurrences before the handler should take action
        attribute :occurrences
        validates :occurrences, type: Integer

        # @return [Object, nil] Number of seconds handlers should wait before taking second action
        attribute :refresh

        # @return [Boolean, nil] Classifies the check as an aggregate check,,making it available via the aggregate API
        attribute :aggregate
        validates :aggregate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The low threshhold for flap detection
        attribute :low_flap_threshold

        # @return [Object, nil] The high threshhold for flap detection
        attribute :high_flap_threshold

        # @return [Object, nil] A hash/dictionary of custom parameters for mixing to the configuration.,You can't rewrite others module parameters using this
        attribute :custom

        # @return [Object, nil] The check source, used to create a JIT Sensu client for an external resource (e.g. a network switch).
        attribute :source
      end
    end
  end
end

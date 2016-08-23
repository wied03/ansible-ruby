# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Sensu_check < Base
        # @return [String] The name of the check,This is the key that is used to determine whether a check exists
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether the check should be present or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Path to the json file of the check to be added/removed.,Will be created if it does not exist (unless I(state=absent)).,The parent folders need to exist when I(state=present), otherwise an error will be thrown
        attribute :path
        validates :path, type: String

        # @return [Object] Create a backup file (if yes), including the timestamp information so,you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Path to the sensu check to run (not required when I(state=absent))
        attribute :command
        validates :command, presence: true, type: String

        # @return [Array] List of handlers to notify when the check fails
        attribute :handlers
        validates :handlers, type: Array

        # @return [Array] List of subscribers/channels this check should run for,See sensu_subscribers to subscribe a machine to a channel
        attribute :subscribers
        validates :subscribers, type: Array

        # @return [String] Check interval in seconds
        attribute :interval
        validates :interval, type: String

        # @return [Fixnum] Timeout for the check
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [TrueClass] Whether the check should be handled or not
        attribute :handle
        validates :handle, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] When to disable handling of check failures
        attribute :subdue_begin

        # @return [Object] When to enable handling of check failures
        attribute :subdue_end

        # @return [Array] Other checks this check depends on, if dependencies fail,,handling of this check will be disabled
        attribute :dependencies
        validates :dependencies, type: Array

        # @return [String] Whether the check is a metric
        attribute :metric
        validates :metric, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Whether the check should be scheduled by the sensu client or server,This option obviates the need for specifying the I(subscribers) option
        attribute :standalone
        validates :standalone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [TrueClass] Whether the check should be scheduled at all.,You can still issue it via the sensu api
        attribute :publish
        validates :publish, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Number of event occurrences before the handler should take action
        attribute :occurrences
        validates :occurrences, type: Fixnum

        # @return [Object] Number of seconds handlers should wait before taking second action
        attribute :refresh

        # @return [Object] Classifies the check as an aggregate check,,making it available via the aggregate API
        attribute :aggregate
        validates :aggregate, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] The low threshhold for flap detection
        attribute :low_flap_threshold

        # @return [Object] The low threshhold for flap detection
        attribute :high_flap_threshold

        # @return [Hash] A hash/dictionary of custom parameters for mixing to the configuration.,You can't rewrite others module parameters using this
        attribute :custom
        validates :custom, type: Hash

        # @return [Object] The check source, used to create a JIT Sensu client for an external resource (e.g. a network switch).
        attribute :source
      end
    end
  end
end

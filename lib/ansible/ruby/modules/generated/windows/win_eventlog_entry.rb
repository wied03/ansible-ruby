# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Write log entries to a given event log from a specified source.
      class Win_eventlog_entry < Base
        # @return [String] Name of the event log to write an entry to.
        attribute :log
        validates :log, presence: true, type: String

        # @return [String] Name of the log source to indicate where the entry is from.
        attribute :source
        validates :source, presence: true, type: String

        # @return [Integer] The numeric event identifier for the entry.,Value must be between 0 and 65535.
        attribute :event_id
        validates :event_id, presence: true, type: Integer

        # @return [String] The message for the given log entry.
        attribute :message
        validates :message, presence: true, type: String

        # @return [:Error, :FailureAudit, :Information, :SuccessAudit, :Warning, nil] Indicates the entry being written to the log is of a specific type.
        attribute :entry_type
        validates :entry_type, inclusion: {:in=>[:Error, :FailureAudit, :Information, :SuccessAudit, :Warning], :message=>"%{value} needs to be :Error, :FailureAudit, :Information, :SuccessAudit, :Warning"}, allow_nil: true

        # @return [Integer, nil] A numeric task category associated with the category message file for the log source.
        attribute :category
        validates :category, type: Integer

        # @return [Integer, nil] Binary data associated with the log entry.,Value must be a comma-separated array of 8-bit unsigned integers (0 to 255).
        attribute :raw_data
        validates :raw_data, type: Integer
      end
    end
  end
end

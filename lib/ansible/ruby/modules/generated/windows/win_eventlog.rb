# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the addition, clearing and removal of local Windows event logs, and the creation and removal of sources from a given event log.  Also allows the specification of settings per log and source.
      class Win_eventlog < Base
        # @return [String] Name of the event log to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :clear, :present, nil] Desired state of the log and/or sources.,When C(sources) is populated, state is checked for sources.,When C(sources) is not populated, state is checked for the specified log itself.,If C(state) is C(clear), event log entries are cleared for the target log.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :clear, :present], :message=>"%{value} needs to be :absent, :clear, :present"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of one or more sources to ensure are present/absent in the log.,When C(category_file), C(message_file) and/or C(parameter_file) are specified, these values are applied across all sources.
        attribute :sources
        validates :sources, type: TypeGeneric.new(String)

        # @return [String, nil] For one or more sources specified, the path to a custom category resource file.
        attribute :category_file
        validates :category_file, type: String

        # @return [String, nil] For one or more sources specified, the path to a custom event message resource file.
        attribute :message_file
        validates :message_file, type: String

        # @return [String, nil] For one or more sources specified, the path to a custom parameter resource file.
        attribute :parameter_file
        validates :parameter_file, type: String

        # @return [String, nil] The maximum size of the event log.,Value must be between 64KB and 4GB, and divisible by 64KB.,Size can be specified in KB, MB or GB (e.g. 128KB, 16MB, 2.5GB).
        attribute :maximum_size
        validates :maximum_size, type: String

        # @return [:OverwriteOlder, :OverwriteAsNeeded, :DoNotOverwrite, nil] The action for the log to take once it reaches its maximum size.,For C(OverwriteOlder), new log entries overwrite those older than the C(retention_days) value.,For C(OverwriteAsNeeded), each new entry overwrites the oldest entry.,For C(DoNotOverwrite), all existing entries are kept and new entries are not retained.
        attribute :overflow_action
        validates :overflow_action, expression_inclusion: {:in=>[:OverwriteOlder, :OverwriteAsNeeded, :DoNotOverwrite], :message=>"%{value} needs to be :OverwriteOlder, :OverwriteAsNeeded, :DoNotOverwrite"}, allow_nil: true

        # @return [Integer, nil] The minimum number of days event entries must remain in the log.,This option is only used when C(overflow_action) is C(OverwriteOlder).
        attribute :retention_days
        validates :retention_days, type: Integer
      end
    end
  end
end

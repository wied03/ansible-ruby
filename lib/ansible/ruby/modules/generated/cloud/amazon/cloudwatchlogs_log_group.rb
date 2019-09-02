# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete log_group in CloudWatchLogs.
      class Cloudwatchlogs_log_group < Base
        # @return [:present, :absent, nil] Whether the rule is present, absent or get
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the log group.
        attribute :log_group_name
        validates :log_group_name, presence: true, type: String

        # @return [String, nil] The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
        attribute :kms_key_id
        validates :kms_key_id, type: String

        # @return [Hash, nil] The key-value pairs to use for the tags.
        attribute :tags
        validates :tags, type: Hash

        # @return [Object, nil] The number of days to retain the log events in the specified log group. Valid values are: [1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653]
        attribute :retention

        # @return [Boolean, nil] Whether an existing log group should be overwritten on create.
        attribute :overwrite
        validates :overwrite, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

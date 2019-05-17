# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows an e-series storage system owner to set audit-log configuration parameters.
      class Netapp_e_auditlog < Base
        # @return [Integer, nil] The maximum number log messages audit-log will retain.,Max records must be between and including 100 and 50000.
        attribute :max_records
        validates :max_records, type: Integer

        # @return [:all, :writeOnly, nil] Filters the log messages according to the specified log level selection.
        attribute :log_level
        validates :log_level, inclusion: {:in=>[:all, :writeOnly], :message=>"%{value} needs to be :all, :writeOnly"}, allow_nil: true

        # @return [:overWrite, :preventSystemAccess, nil] Specifies what audit-log should do once the number of entries approach the record limit.
        attribute :full_policy
        validates :full_policy, inclusion: {:in=>[:overWrite, :preventSystemAccess], :message=>"%{value} needs to be :overWrite, :preventSystemAccess"}, allow_nil: true

        # @return [Integer, nil] This is the memory full percent threshold that audit-log will start issuing warning messages.,Percent range must be between and including 60 and 90.
        attribute :threshold
        validates :threshold, type: Integer

        # @return [Symbol, nil] Forces the audit-log configuration to delete log history when log messages fullness cause immediate warning or full condition.,Warning! This will cause any existing audit-log messages to be deleted.,This is only applicable for I(full_policy=preventSystemAccess).
        attribute :force
        validates :force, type: Symbol

        # @return [String, nil] A local path to a file to be used for debug logging.
        attribute :log_path
        validates :log_path, type: String
      end
    end
  end
end

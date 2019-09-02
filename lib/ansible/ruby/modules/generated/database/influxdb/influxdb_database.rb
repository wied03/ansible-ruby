# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage InfluxDB databases.
      class Influxdb_database < Base
        # @return [String] Name of the database.
        attribute :database_name
        validates :database_name, presence: true, type: String

        # @return [:present, :absent, nil] Determines if the database should be created or destroyed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

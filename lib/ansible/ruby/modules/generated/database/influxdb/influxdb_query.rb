# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Query data points from InfluxDB.
      class Influxdb_query < Base
        # @return [String] Query to be executed.
        attribute :query
        validates :query, presence: true, type: String

        # @return [String] Name of the database.
        attribute :database_name
        validates :database_name, presence: true, type: String
      end
    end
  end
end

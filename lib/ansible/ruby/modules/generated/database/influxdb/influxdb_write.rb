# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Write data points into InfluxDB.
      class Influxdb_write < Base
        # @return [Array<Hash>, Hash] Data points as dict to write into the database.
        attribute :data_points
        validates :data_points, presence: true, type: TypeGeneric.new(Hash)

        # @return [String] Name of the database.
        attribute :database_name
        validates :database_name, presence: true, type: String
      end
    end
  end
end

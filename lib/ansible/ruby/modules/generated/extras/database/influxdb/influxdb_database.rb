# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage InfluxDB databases
      class Influxdb_database < Base
        # @return [String] The hostname or IP address on which InfluxDB server is listening
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [String, nil] Username that will be used to authenticate against InfluxDB server
        attribute :username
        validates :username, type: String

        # @return [String, nil] Password that will be used to authenticate against InfluxDB server
        attribute :password
        validates :password, type: String

        # @return [Integer, nil] The port on which InfluxDB server is listening
        attribute :port
        validates :port, type: Integer

        # @return [String] Name of the database that will be created/destroyed
        attribute :database_name
        validates :database_name, presence: true, type: String

        # @return [:present, :absent, nil] Determines if the database should be created or destroyed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

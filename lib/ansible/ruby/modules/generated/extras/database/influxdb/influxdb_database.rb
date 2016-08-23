# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Influxdb_database < Base
        # @return [Object] The hostname or IP address on which InfluxDB server is listening
        attribute :hostname
        validates :hostname, presence: true

        # @return [String] Username that will be used to authenticate against InfluxDB server
        attribute :username
        validates :username, type: String

        # @return [String] Password that will be used to authenticate against InfluxDB server
        attribute :password
        validates :password, type: String

        # @return [Fixnum] The port on which InfluxDB server is listening
        attribute :port
        validates :port, type: Fixnum

        # @return [Object] Name of the database that will be created/destroyed
        attribute :database_name
        validates :database_name, presence: true

        # @return [String] Determines if the database should be created or destroyed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

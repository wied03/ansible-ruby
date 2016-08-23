# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mongodb_parameter < Base
        # @return [Object] The username used to authenticate with
        attribute :login_user

        # @return [Object] The password used to authenticate with
        attribute :login_password

        # @return [String] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Fixnum] The port to connect to
        attribute :login_port
        validates :login_port, type: Fixnum

        # @return [Object] The database where login credentials are stored
        attribute :login_database

        # @return [Object] Replica set to connect to (automatically connects to primary for writes)
        attribute :replica_set

        # @return [Object] The name of the database to add/remove the user from
        attribute :database
        validates :database, presence: true

        # @return [Object] Whether to use an SSL connection when connecting to the database
        attribute :ssl

        # @return [String] MongoDB administrative parameter to modify
        attribute :param
        validates :param, presence: true, type: String

        # @return [String] MongoDB administrative parameter value to set
        attribute :value
        validates :value, presence: true, type: String

        # @return [String] Define the parameter value (str, int)
        attribute :param_type
        validates :param_type, type: String
      end
    end
  end
end

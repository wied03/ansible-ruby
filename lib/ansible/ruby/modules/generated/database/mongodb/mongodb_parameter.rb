# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Change an administrative parameter on a MongoDB server.
      class Mongodb_parameter < Base
        # @return [Object, nil] The username used to authenticate with
        attribute :login_user

        # @return [Object, nil] The password used to authenticate with
        attribute :login_password

        # @return [String, nil] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port to connect to
        attribute :login_port
        validates :login_port, type: Integer

        # @return [Object, nil] The database where login credentials are stored
        attribute :login_database

        # @return [Object, nil] Replica set to connect to (automatically connects to primary for writes)
        attribute :replica_set

        # @return [Object] The name of the database to add/remove the user from
        attribute :database
        validates :database, presence: true

        # @return [:yes, :no, nil] Whether to use an SSL connection when connecting to the database
        attribute :ssl
        validates :ssl, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] MongoDB administrative parameter to modify
        attribute :param
        validates :param, presence: true, type: String

        # @return [Integer] MongoDB administrative parameter value to set
        attribute :value
        validates :value, presence: true, type: Integer

        # @return [String, nil] Define the parameter value (str, int)
        attribute :param_type
        validates :param_type, type: String
      end
    end
  end
end

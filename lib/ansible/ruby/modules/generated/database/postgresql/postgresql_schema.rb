# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove PostgreSQL schema from a remote host.
      class Postgresql_schema < Base
        # @return [String] Name of the schema to add or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the database to connect to.
        attribute :database
        validates :database, type: String

        # @return [Object, nil] The username used to authenticate with.
        attribute :login_user

        # @return [Object, nil] The password used to authenticate with.
        attribute :login_password

        # @return [String, nil] Host running the database.
        attribute :login_host
        validates :login_host, type: String

        # @return [Object, nil] Path to a Unix domain socket for local connections.
        attribute :login_unix_socket

        # @return [String, nil] Name of the role to set as owner of the schema.
        attribute :owner
        validates :owner, type: String

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [:present, :absent, nil] The schema state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes a user from a MongoDB database.
      class Mongodb_user < Base
        # @return [String, nil] The username used to authenticate with
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] The password used to authenticate with
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port to connect to
        attribute :login_port
        validates :login_port, type: Integer

        # @return [Object, nil] The database where login credentials are stored
        attribute :login_database

        # @return [String, nil] Replica set to connect to (automatically connects to primary for writes)
        attribute :replica_set
        validates :replica_set, type: String

        # @return [String] The name of the database to add/remove the user from
        attribute :database
        validates :database, presence: true, type: String

        # @return [String] The name of the user to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The password to use for the user
        attribute :password
        validates :password, type: String

        # @return [Boolean, nil] Whether to use an SSL connection when connecting to the database
        attribute :ssl
        validates :ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:CERT_REQUIRED, :CERT_OPTIONAL, :CERT_NONE, nil] Specifies whether a certificate is required from the other side of the connection, and whether it will be validated if provided.
        attribute :ssl_cert_reqs
        validates :ssl_cert_reqs, inclusion: {:in=>[:CERT_REQUIRED, :CERT_OPTIONAL, :CERT_NONE], :message=>"%{value} needs to be :CERT_REQUIRED, :CERT_OPTIONAL, :CERT_NONE"}, allow_nil: true

        # @return [String, nil] The database user roles valid values could either be one or more of the following strings: 'read', 'readWrite', 'dbAdmin', 'userAdmin', 'clusterAdmin', 'readAnyDatabase', 'readWriteAnyDatabase', 'userAdminAnyDatabase', 'dbAdminAnyDatabase',Or the following dictionary '{ db: DATABASE_NAME, role: ROLE_NAME }'.,This param requires pymongo 2.5+. If it is a string, mongodb 2.4+ is also required. If it is a dictionary, mongo 2.6+  is required.
        attribute :roles
        validates :roles, type: String

        # @return [:present, :absent, nil] The database user state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end

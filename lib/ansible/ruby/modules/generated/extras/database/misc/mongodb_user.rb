# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mongodb_user < Base
        # @return [String] The username used to authenticate with
        attribute :login_user
        validates :login_user, type: String

        # @return [String] The password used to authenticate with
        attribute :login_password
        validates :login_password, type: String

        # @return [String] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Fixnum] The port to connect to
        attribute :login_port
        validates :login_port, type: Fixnum

        # @return [Object] The database where login credentials are stored
        attribute :login_database

        # @return [String] Replica set to connect to (automatically connects to primary for writes)
        attribute :replica_set
        validates :replica_set, type: String

        # @return [String] The name of the database to add/remove the user from
        attribute :database
        validates :database, presence: true, type: String

        # @return [String] The name of the user to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The password to use for the user
        attribute :password
        validates :password, type: String

        # @return [String] Whether to use an SSL connection when connecting to the database
        attribute :ssl
        validates :ssl, type: String

        # @return [String] The database user roles valid values could either be one or more of the following strings: 'read', 'readWrite', 'dbAdmin', 'userAdmin', 'clusterAdmin', 'readAnyDatabase', 'readWriteAnyDatabase', 'userAdminAnyDatabase', 'dbAdminAnyDatabase',Or the following dictionary '{ db: DATABASE_NAME, role: ROLE_NAME }'.,This param requires pymongo 2.5+. If it is a string, mongodb 2.4+ is also required. If it is a dictionary, mongo 2.6+  is required.
        attribute :roles
        validates :roles, type: String

        # @return [String] The database user state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end

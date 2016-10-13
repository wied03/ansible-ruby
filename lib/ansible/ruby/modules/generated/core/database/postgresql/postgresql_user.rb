# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove PostgreSQL users (roles) from a remote host and, optionally, grant the users access to an existing database or tables.
      # The fundamental function of the module is to create, or delete, roles from a PostgreSQL cluster. Privilege assignment, or removal, is an optional step, which works on one database at a time. This allows for the module to be called several times in the same module to modify the permissions on different databases, or to grant permissions to already existing users.
      # A user cannot be removed until all the privileges have been stripped from the user. In such situation, if the module tries to remove the user it will fail. To avoid this from happening the fail_on_user option signals the module to try to remove the user, but if not possible keep going; the module will report if changes happened and separately if the user was removed or not.
      class Postgresql_user < Base
        # @return [String] name of the user (role) to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] set the user's password, before 1.4 this was required.,When passing an encrypted password, the encrypted parameter must also be true, and it must be generated with the format in the Ansible docs
        attribute :password
        validates :password, type: String

        # @return [String, nil] name of database where permissions will be granted
        attribute :db
        validates :db, type: String

        # @return [:yes, :no, nil] if C(yes), fail when user can't be removed. Otherwise just log and continue
        attribute :fail_on_user
        validates :fail_on_user, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] User (role) used to authenticate with PostgreSQL
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] Password used to authenticate with PostgreSQL
        attribute :login_password

        # @return [String, nil] Host running PostgreSQL.
        attribute :login_host
        validates :login_host, type: String

        # @return [Object, nil] Path to a Unix domain socket for local connections
        attribute :login_unix_socket

        # @return [Array<String>, String, nil] PostgreSQL privileges string in the format: C(table:priv1,priv2)
        attribute :priv
        validates :priv, type: TypeGeneric.new(String)

        # @return [:"[NO]SUPERUSER", :"[NO]CREATEROLE", :"[NO]CREATEUSER", :"[NO]CREATEDB", :"[NO]INHERIT", :"[NO]LOGIN", :"[NO]REPLICATION", nil] PostgreSQL role attributes string in the format: CREATEDB,CREATEROLE,SUPERUSER
        attribute :role_attr_flags
        validates :role_attr_flags, inclusion: {:in=>[:"[NO]SUPERUSER", :"[NO]CREATEROLE", :"[NO]CREATEUSER", :"[NO]CREATEDB", :"[NO]INHERIT", :"[NO]LOGIN", :"[NO]REPLICATION"], :message=>"%{value} needs to be :\"[NO]SUPERUSER\", :\"[NO]CREATEROLE\", :\"[NO]CREATEUSER\", :\"[NO]CREATEDB\", :\"[NO]INHERIT\", :\"[NO]LOGIN\", :\"[NO]REPLICATION\""}, allow_nil: true

        # @return [:present, :absent, nil] The user (role) state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] whether the password is stored hashed in the database. boolean. Passwords can be passed already hashed or unhashed, and postgresql ensures the stored password is hashed when encrypted is set.
        attribute :encrypted
        validates :encrypted, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] sets the user's password expiration.
        attribute :expires

        # @return [:yes, :no, nil] if C(yes), don't inspect database for password changes. Effective when C(pg_authid) is not accessible (such as AWS RDS). Otherwise, make password changes as necessary.
        attribute :no_password_changes
        validates :no_password_changes, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

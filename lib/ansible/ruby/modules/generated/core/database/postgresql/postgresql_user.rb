# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Postgresql_user < Base
        # @return [String] name of the user (role) to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] set the user's password, before 1.4 this was required.,When passing an encrypted password, the encrypted parameter must also be true, and it must be generated with the format in the Ansible docs
        attribute :password
        validates :password, type: String

        # @return [String] name of database where permissions will be granted
        attribute :db
        validates :db, type: String

        # @return [String] if C(yes), fail when user can't be removed. Otherwise just log and continue
        attribute :fail_on_user
        validates :fail_on_user, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Database port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] User (role) used to authenticate with PostgreSQL
        attribute :login_user
        validates :login_user, type: String

        # @return [Object] Password used to authenticate with PostgreSQL
        attribute :login_password

        # @return [String] Host running PostgreSQL.
        attribute :login_host
        validates :login_host, type: String

        # @return [Object] Path to a Unix domain socket for local connections
        attribute :login_unix_socket

        # @return [Array<String>] PostgreSQL privileges string in the format: C(table:priv1,priv2)
        attribute :priv, flat_array: true
        validates :priv, type: TypeGeneric.new(String)

        # @return [String] PostgreSQL role attributes string in the format: CREATEDB,CREATEROLE,SUPERUSER
        attribute :role_attr_flags
        validates :role_attr_flags, inclusion: {:in=>[:"[NO]SUPERUSER", :"[NO]CREATEROLE", :"[NO]CREATEUSER", :"[NO]CREATEDB", :"[NO]INHERIT", :"[NO]LOGIN", :"[NO]REPLICATION"], :message=>"%{value} needs to be :\"[NO]SUPERUSER\", :\"[NO]CREATEROLE\", :\"[NO]CREATEUSER\", :\"[NO]CREATEDB\", :\"[NO]INHERIT\", :\"[NO]LOGIN\", :\"[NO]REPLICATION\""}, allow_nil: true

        # @return [String] The user (role) state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] whether the password is stored hashed in the database. boolean. Passwords can be passed already hashed or unhashed, and postgresql ensures the stored password is hashed when encrypted is set.
        attribute :encrypted

        # @return [Object] sets the user's password expiration.
        attribute :expires

        # @return [String] if C(yes), don't inspect database for password changes. Effective when C(pg_authid) is not accessible (such as AWS RDS). Otherwise, make password changes as necessary.
        attribute :no_password_changes
        validates :no_password_changes, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

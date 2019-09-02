# frozen_string_literal: true
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
        # @return [String] Name of the user (role) to add or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Set the user's password, before 1.4 this was required.,Password can be passed unhashed or hashed (MD5-hashed).,Unhashed password will automatically be hashed when saved into the database if C(encrypted) parameter is set, otherwise it will be save in plain text format.,When passing a hashed password it must be generated with the format C('str["md5"] + md5[ password + username ]'), resulting in a total of 35 characters. An easy way to do this is C(echo "md5$(echo -n 'verysecretpasswordJOE' | md5sum)").,Note that if the provided password string is already in MD5-hashed format, then it is used as-is, regardless of C(encrypted) parameter.
        attribute :password
        validates :password, type: String

        # @return [String, nil] Name of database where permissions will be granted.
        attribute :db
        validates :db, type: String

        # @return [:yes, :no, nil] If C(yes), fail when user can't be removed. Otherwise just log and continue.
        attribute :fail_on_user
        validates :fail_on_user, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] User (role) used to authenticate with PostgreSQL.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] Password used to authenticate with PostgreSQL.
        attribute :login_password

        # @return [String, nil] Host running PostgreSQL.
        attribute :login_host
        validates :login_host, type: String

        # @return [Object, nil] Path to a Unix domain socket for local connections.
        attribute :login_unix_socket

        # @return [String, nil] PostgreSQL privileges string in the format: C(table:priv1,priv2).
        attribute :priv
        validates :priv, type: String

        # @return [:"[NO]SUPERUSER", :"[NO]CREATEROLE", :"[NO]CREATEDB", :"[NO]INHERIT", :"[NO]LOGIN", :"[NO]REPLICATION", :"[NO]BYPASSRLS", nil] PostgreSQL role attributes string in the format: CREATEDB,CREATEROLE,SUPERUSER.,Note that '[NO]CREATEUSER' is deprecated.
        attribute :role_attr_flags
        validates :role_attr_flags, expression_inclusion: {:in=>[:"[NO]SUPERUSER", :"[NO]CREATEROLE", :"[NO]CREATEDB", :"[NO]INHERIT", :"[NO]LOGIN", :"[NO]REPLICATION", :"[NO]BYPASSRLS"], :message=>"%{value} needs to be :\"[NO]SUPERUSER\", :\"[NO]CREATEROLE\", :\"[NO]CREATEDB\", :\"[NO]INHERIT\", :\"[NO]LOGIN\", :\"[NO]REPLICATION\", :\"[NO]BYPASSRLS\""}, allow_nil: true

        # @return [:present, :absent, nil] The user (role) state.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the password is stored hashed in the database. Passwords can be passed already hashed or unhashed, and postgresql ensures the stored password is hashed when C(encrypted) is set.,Note: Postgresql 10 and newer doesn't support unhashed passwords.,Previous to Ansible 2.6, this was C(no) by default.
        attribute :encrypted
        validates :encrypted, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The date at which the user's password is to expire.,If set to C('infinity'), user's password never expire.,Note that this value should be a valid SQL date and time type.
        attribute :expires
        validates :expires, type: String

        # @return [:yes, :no, nil] If C(yes), don't inspect database for password changes. Effective when C(pg_authid) is not accessible (such as AWS RDS). Otherwise, make password changes as necessary.
        attribute :no_password_changes
        validates :no_password_changes, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:disable, :allow, :prefer, :require, :"verify-ca", :"verify-full", nil] Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.,See U(https://www.postgresql.org/docs/current/static/libpq-ssl.html) for more information on the modes.,Default of C(prefer) matches libpq default.
        attribute :ssl_mode
        validates :ssl_mode, expression_inclusion: {:in=>[:disable, :allow, :prefer, :require, :"verify-ca", :"verify-full"], :message=>"%{value} needs to be :disable, :allow, :prefer, :require, :\"verify-ca\", :\"verify-full\""}, allow_nil: true

        # @return [Object, nil] Specifies the name of a file containing SSL certificate authority (CA) certificate(s). If the file exists, the server's certificate will be verified to be signed by one of these authorities.
        attribute :ssl_rootcert

        # @return [Object, nil] Specifies the user connection limit.
        attribute :conn_limit
      end
    end
  end
end

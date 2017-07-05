# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Grant or revoke privileges on PostgreSQL database objects.
      # This module is basically a wrapper around most of the functionality of PostgreSQL's GRANT and REVOKE statements with detection of changes (GRANT/REVOKE I(privs) ON I(type) I(objs) TO/FROM I(roles))
      class Postgresql_privs < Base
        # @return [String] Name of database to connect to.,Alias: I(db)
        attribute :database
        validates :database, presence: true, type: String

        # @return [:present, :absent, nil] If C(present), the specified privileges are granted, if C(absent) they are revoked.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] Comma separated list of privileges to grant/revoke.,Alias: I(priv)
        attribute :privs
        validates :privs, type: TypeGeneric.new(String)

        # @return [:table, :sequence, :function, :database, :schema, :language, :tablespace, :group, nil] Type of database object to set privileges on.
        attribute :type
        validates :type, inclusion: {:in=>[:table, :sequence, :function, :database, :schema, :language, :tablespace, :group], :message=>"%{value} needs to be :table, :sequence, :function, :database, :schema, :language, :tablespace, :group"}, allow_nil: true

        # @return [Array<String>, String, nil] Comma separated list of database objects to set privileges on.,If I(type) is C(table) or C(sequence), the special value C(ALL_IN_SCHEMA) can be provided instead to specify all database objects of type I(type) in the schema specified via I(schema). (This also works with PostgreSQL < 9.0.),If I(type) is C(database), this parameter can be omitted, in which case privileges are set for the database specified via I(database).,If I(type) is I(function), colons (":") in object names will be replaced with commas (needed to specify function signatures, see examples),Alias: I(obj)
        attribute :objs
        validates :objs, type: TypeGeneric.new(String)

        # @return [String, nil] Schema that contains the database objects specified via I(objs).,May only be provided if I(type) is C(table), C(sequence) or C(function). Defaults to  C(public) in these cases.
        attribute :schema
        validates :schema, type: String

        # @return [Array<String>, String] Comma separated list of role (user/group) names to set permissions for.,The special value C(PUBLIC) can be provided instead to set permissions for the implicitly defined PUBLIC group.,Alias: I(role)
        attribute :roles
        validates :roles, presence: true, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Whether C(role) may grant/revoke the specified privileges/group memberships to others.,Set to C(no) to revoke GRANT OPTION, leave unspecified to make no changes.,I(grant_option) only has an effect if I(state) is C(present).,Alias: I(admin_option)
        attribute :grant_option
        validates :grant_option, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Database host address. If unspecified, connect via Unix socket.,Alias: I(login_host)
        attribute :host

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] Path to a Unix domain socket for local connections.,Alias: I(login_unix_socket)
        attribute :unix_socket

        # @return [String, nil] The username to authenticate with.,Alias: I(login_user)
        attribute :login
        validates :login, type: String

        # @return [Object, nil] The password to authenticate with.,Alias: I(login_password))
        attribute :password

        # @return [:disable, :allow, :prefer, :require, :"verify-ca", :"verify-full", nil] Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.,See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.,Default of C(prefer) matches libpq default.
        attribute :ssl_mode
        validates :ssl_mode, inclusion: {:in=>[:disable, :allow, :prefer, :require, :"verify-ca", :"verify-full"], :message=>"%{value} needs to be :disable, :allow, :prefer, :require, :\"verify-ca\", :\"verify-full\""}, allow_nil: true

        # @return [Object, nil] Specifies the name of a file containing SSL certificate authority (CA) certificate(s). If the file exists, the server's certificate will be verified to be signed by one of these authorities.
        attribute :ssl_rootcert
      end
    end
  end
end

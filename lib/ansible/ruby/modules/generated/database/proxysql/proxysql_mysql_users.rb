# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_mysql_users) module adds or removes mysql users using the proxysql admin interface.
      class Proxysql_mysql_users < Base
        # @return [String] Name of the user connecting to the mysqld or ProxySQL instance.
        attribute :username
        validates :username, presence: true, type: String

        # @return [Object, nil] Password of the user connecting to the mysqld or ProxySQL instance.
        attribute :password

        # @return [Object, nil] A user with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures. If omitted the proxysql database default for I(active) is C(True).
        attribute :active

        # @return [Object, nil] If I(use_ssl) is set to C(True), connections by this user will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).
        attribute :use_ssl

        # @return [Object, nil] If there is no matching rule for the queries sent by this user, the traffic it generates is sent to the specified hostgroup. If omitted the proxysql database default for I(use_ssl) is 0.
        attribute :default_hostgroup

        # @return [Object, nil] The schema to which the connection should change to by default.
        attribute :default_schema

        # @return [Object, nil] If this is set for the user with which the MySQL client is connecting to ProxySQL (thus a "frontend" user), transactions started within a hostgroup will remain within that hostgroup regardless of any other rules. If omitted the proxysql database default for I(transaction_persistent) is C(False).
        attribute :transaction_persistent

        # @return [Object, nil] If I(fast_forward) is set to C(True), I(fast_forward) will bypass the query processing layer (rewriting, caching) and pass through the query directly as is to the backend server. If omitted the proxysql database default for I(fast_forward) is C(False).
        attribute :fast_forward

        # @return [Boolean, nil] If I(backend) is set to C(True), this (username, password) pair is used for authenticating to the ProxySQL instance.
        attribute :backend
        validates :backend, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(frontend) is set to C(True), this (username, password) pair is used for authenticating to the mysqld servers against any hostgroup.
        attribute :frontend
        validates :frontend, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The maximum number of connections ProxySQL will open to the backend for this user. If omitted the proxysql database default for I(max_connections) is 10000.
        attribute :max_connections

        # @return [:present, :absent, nil] When C(present) - adds the user, when C(absent) - removes the user.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

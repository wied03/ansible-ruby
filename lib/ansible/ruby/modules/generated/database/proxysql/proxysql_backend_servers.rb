# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_backend_servers) module adds or removes mysql hosts using the proxysql admin interface.
      class Proxysql_backend_servers < Base
        # @return [Integer, nil] The hostgroup in which this mysqld instance is included. An instance can be part of one or more hostgroups.
        attribute :hostgroup_id
        validates :hostgroup_id, type: Integer

        # @return [String] The ip address at which the mysqld instance can be contacted.
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [Integer, nil] The port at which the mysqld instance can be contacted.
        attribute :port
        validates :port, type: Integer

        # @return [:ONLINE, :OFFLINE_SOFT, :OFFLINE_HARD, nil] ONLINE - Backend server is fully operational. OFFLINE_SOFT - When a server is put into C(OFFLINE_SOFT) mode, connections are kept in use until the current transaction is completed. This allows to gracefully detach a backend. OFFLINE_HARD - When a server is put into C(OFFLINE_HARD) mode, the existing connections are dropped, while new incoming connections aren't accepted either.\r\nIf omitted the proxysql database default for I(status) is C(ONLINE).
        attribute :status
        validates :status, inclusion: {:in=>[:ONLINE, :OFFLINE_SOFT, :OFFLINE_HARD], :message=>"%{value} needs to be :ONLINE, :OFFLINE_SOFT, :OFFLINE_HARD"}, allow_nil: true

        # @return [Object, nil] The bigger the weight of a server relative to other weights, the higher the probability of the server being chosen from the hostgroup. If omitted the proxysql database default for I(weight) is 1.
        attribute :weight

        # @return [Object, nil] If the value of I(compression) is greater than 0, new connections to that server will use compression. If omitted the proxysql database default for I(compression) is 0.
        attribute :compression

        # @return [Object, nil] The maximum number of connections ProxySQL will open to this backend server. If omitted the proxysql database default for I(max_connections) is 1000.
        attribute :max_connections

        # @return [Object, nil] If greater than 0, ProxySQL will reguarly monitor replication lag. If replication lag goes above I(max_replication_lag), proxysql will temporarily shun the server until replication catches up. If omitted the proxysql database default for I(max_replication_lag) is 0.
        attribute :max_replication_lag

        # @return [Object, nil] If I(use_ssl) is set to C(True), connections to this server will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).
        attribute :use_ssl

        # @return [Object, nil] Ping time is monitored regularly. If a host has a ping time greater than I(max_latency_ms) it is excluded from the connection pool (although the server stays ONLINE). If omitted the proxysql database default for I(max_latency_ms) is 0.
        attribute :max_latency_ms

        # @return [String, nil] Text field that can be used for any purposed defined by the user. Could be a description of what the host stores, a reminder of when the host was added or disabled, or a JSON processed by some checker script.
        attribute :comment
        validates :comment, type: String

        # @return [:present, :absent, nil] When C(present) - adds the host, when C(absent) - removes the host.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

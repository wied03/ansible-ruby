# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_query_rules) module modifies query rules using the proxysql admin interface.
      class Proxysql_query_rules < Base
        # @return [Object, nil] The unique id of the rule. Rules are processed in rule_id order.
        attribute :rule_id

        # @return [Integer, nil] A rule with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures.
        attribute :active
        validates :active, type: Integer

        # @return [String, nil] Filtering criteria matching username.  If I(username) is non-NULL, a query will match only if the connection is made with the correct username.
        attribute :username
        validates :username, type: String

        # @return [Object, nil] Filtering criteria matching schemaname. If I(schemaname) is non-NULL, a query will match only if the connection uses schemaname as its default schema.
        attribute :schemaname

        # @return [Object, nil] Used in combination with I(flagOUT) and I(apply) to create chains of rules.
        attribute :flagIN

        # @return [Object, nil] Match traffic from a specific source.
        attribute :client_addr

        # @return [Object, nil] Match incoming traffic on a specific local IP.
        attribute :proxy_addr

        # @return [Object, nil] Match incoming traffic on a specific local port.
        attribute :proxy_port

        # @return [Object, nil] Match queries with a specific digest, as returned by stats_mysql_query_digest.digest.
        attribute :digest

        # @return [Object, nil] Regular expression that matches the query digest. The dialect of regular expressions used is that of re2 - https://github.com/google/re2
        attribute :match_digest

        # @return [Object, nil] Regular expression that matches the query text. The dialect of regular expressions used is that of re2 - https://github.com/google/re2
        attribute :match_pattern

        # @return [Object, nil] If I(negate_match_pattern) is set to C(True), only queries not matching the query text will be considered as a match. This acts as a NOT operator in front of the regular expression matching against match_pattern.
        attribute :negate_match_pattern

        # @return [Object, nil] Used in combination with I(flagIN) and apply to create chains of rules. When set, I(flagOUT) signifies the I(flagIN) to be used in the next chain of rules.
        attribute :flagOUT

        # @return [Object, nil] This is the pattern with which to replace the matched pattern. Note that this is optional, and when omitted, the query processor will only cache, route, or set other parameters without rewriting.
        attribute :replace_pattern

        # @return [Integer, nil] Route matched queries to this hostgroup. This happens unless there is a started transaction and the logged in user has I(transaction_persistent) set to C(True) (see M(proxysql_mysql_users)).
        attribute :destination_hostgroup
        validates :destination_hostgroup, type: Integer

        # @return [Object, nil] The number of milliseconds for which to cache the result of the query. Note in ProxySQL 1.1 I(cache_ttl) was in seconds.
        attribute :cache_ttl

        # @return [Object, nil] The maximum timeout in milliseconds with which the matched or rewritten query should be executed. If a query run for longer than the specific threshold, the query is automatically killed. If timeout is not specified, the global variable mysql-default_query_timeout applies.
        attribute :timeout

        # @return [Integer, nil] The maximum number of times a query needs to be re-executed in case of detected failure during the execution of the query. If retries is not specified, the global variable mysql-query_retries_on_failure applies.
        attribute :retries
        validates :retries, type: Integer

        # @return [Object, nil] Number of milliseconds to delay the execution of the query. This is essentially a throttling mechanism and QoS, and allows a way to give priority to queries over others. This value is added to the mysql-default_query_delay global variable that applies to all queries.
        attribute :delay

        # @return [Object, nil] Enables query mirroring. If set I(mirror_flagOUT) can be used to evaluates the mirrored query against the specified chain of rules.
        attribute :mirror_flagOUT

        # @return [Object, nil] Enables query mirroring. If set I(mirror_hostgroup) can be used to mirror queries to the same or different hostgroup.
        attribute :mirror_hostgroup

        # @return [Object, nil] Query will be blocked, and the specified error_msg will be returned to the client.
        attribute :error_msg

        # @return [Object, nil] Query will be logged.
        attribute :log

        # @return [Object, nil] Used in combination with I(flagIN) and I(flagOUT) to create chains of rules. Setting apply to True signifies the last rule to be applied.
        attribute :apply

        # @return [Object, nil] Free form text field, usable for a descriptive comment of the query rule.
        attribute :comment

        # @return [:present, :absent, nil] When C(present) - adds the rule, when C(absent) - removes the rule.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] By default we avoid deleting more than one schedule in a single batch, however if you need this behaviour and you're not concerned about the schedules deleted, you can set I(force_delete) to C(True).
        attribute :force_delete
        validates :force_delete, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Save mysql host config to sqlite db on disk to persist the configuration.
        attribute :save_to_disk
        validates :save_to_disk, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Dynamically load mysql host config to runtime memory.
        attribute :load_to_runtime
        validates :load_to_runtime, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The username used to authenticate to ProxySQL admin interface.
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] The password used to authenticate to ProxySQL admin interface.
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] The host used to connect to ProxySQL admin interface.
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port used to connect to ProxySQL admin interface.
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] Specify a config file from which login_user and login_password are to be read.
        attribute :config_file
        validates :config_file, type: String
      end
    end
  end
end

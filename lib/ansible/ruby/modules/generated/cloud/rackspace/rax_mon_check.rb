# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a Rackspace Cloud Monitoring check associated with an existing rax_mon_entity. A check is a specific test or measurement that is performed, possibly from different monitoring zones, on the systems you monitor. Rackspace monitoring module flow | rax_mon_entity -> *rax_mon_check* -> rax_mon_notification -> rax_mon_notification_plan -> rax_mon_alarm
      class Rax_mon_check < Base
        # @return [:present, :absent, nil] Ensure that a check with this C(label) exists or does not exist.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] ID of the rax_mon_entity to target with this check.
        attribute :entity_id
        validates :entity_id, presence: true

        # @return [Object] Defines a label for this check, between 1 and 64 characters long.
        attribute :label
        validates :label, presence: true

        # @return [:"remote.dns", :"remote.ftp-banner", :"remote.http", :"remote.imap-banner", :"remote.mssql-banner", :"remote.mysql-banner", :"remote.ping", :"remote.pop3-banner", :"remote.postgresql-banner", :"remote.smtp-banner", :"remote.smtp", :"remote.ssh", :"remote.tcp", :"remote.telnet-banner", :"agent.filesystem", :"agent.memory", :"agent.load_average", :"agent.cpu", :"agent.disk", :"agent.network", :"agent.plugin"] The type of check to create. C(remote.) checks may be created on any rax_mon_entity. C(agent.) checks may only be created on rax_mon_entities that have a non-null C(agent_id).
        attribute :check_type
        validates :check_type, presence: true, expression_inclusion: {:in=>[:"remote.dns", :"remote.ftp-banner", :"remote.http", :"remote.imap-banner", :"remote.mssql-banner", :"remote.mysql-banner", :"remote.ping", :"remote.pop3-banner", :"remote.postgresql-banner", :"remote.smtp-banner", :"remote.smtp", :"remote.ssh", :"remote.tcp", :"remote.telnet-banner", :"agent.filesystem", :"agent.memory", :"agent.load_average", :"agent.cpu", :"agent.disk", :"agent.network", :"agent.plugin"], :message=>"%{value} needs to be :\"remote.dns\", :\"remote.ftp-banner\", :\"remote.http\", :\"remote.imap-banner\", :\"remote.mssql-banner\", :\"remote.mysql-banner\", :\"remote.ping\", :\"remote.pop3-banner\", :\"remote.postgresql-banner\", :\"remote.smtp-banner\", :\"remote.smtp\", :\"remote.ssh\", :\"remote.tcp\", :\"remote.telnet-banner\", :\"agent.filesystem\", :\"agent.memory\", :\"agent.load_average\", :\"agent.cpu\", :\"agent.disk\", :\"agent.network\", :\"agent.plugin\""}

        # @return [Object, nil] Comma-separated list of the names of the monitoring zones the check should run from. Available monitoring zones include mzdfw, mzhkg, mziad, mzlon, mzord and mzsyd. Required for remote.* checks; prohibited for agent.* checks.
        attribute :monitoring_zones_poll

        # @return [Object, nil] One of `target_hostname` and `target_alias` is required for remote.* checks, but prohibited for agent.* checks. The hostname this check should target. Must be a valid IPv4, IPv6, or FQDN.
        attribute :target_hostname

        # @return [Object, nil] One of `target_alias` and `target_hostname` is required for remote.* checks, but prohibited for agent.* checks. Use the corresponding key in the entity's `ip_addresses` hash to resolve an IP address to target.
        attribute :target_alias

        # @return [Object, nil] Additional details specific to the check type. Must be a hash of strings between 1 and 255 characters long, or an array or object containing 0 to 256 items.
        attribute :details

        # @return [Symbol, nil] If "yes", ensure the check is created, but don't actually use it yet.
        attribute :disabled
        validates :disabled, type: Symbol

        # @return [Object, nil] Hash of arbitrary key-value pairs to accompany this check if it fires. Keys and values must be strings between 1 and 255 characters long.
        attribute :metadata

        # @return [Object, nil] The number of seconds between each time the check is performed. Must be greater than the minimum period set on your account.
        attribute :period

        # @return [Object, nil] The number of seconds this check will wait when attempting to collect results. Must be less than the period.
        attribute :timeout
      end
    end
  end
end

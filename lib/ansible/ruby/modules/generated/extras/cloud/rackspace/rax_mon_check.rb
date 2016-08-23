# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_mon_check < Base
        # @return [Object] Ensure that a check with this C(label) exists or does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] ID of the rax_mon_entity to target with this check.
        attribute :entity_id
        validates :entity_id, presence: true

        # @return [Object] Defines a label for this check, between 1 and 64 characters long.
        attribute :label
        validates :label, presence: true

        # @return [Object] The type of check to create. C(remote.) checks may be created on any rax_mon_entity. C(agent.) checks may only be created on rax_mon_entities that have a non-null C(agent_id).
        attribute :check_type
        validates :check_type, presence: true, inclusion: {:in=>[:"remote.dns", :"remote.ftp-banner", :"remote.http", :"remote.imap-banner", :"remote.mssql-banner", :"remote.mysql-banner", :"remote.ping", :"remote.pop3-banner", :"remote.postgresql-banner", :"remote.smtp-banner", :"remote.smtp", :"remote.ssh", :"remote.tcp", :"remote.telnet-banner", :"agent.filesystem", :"agent.memory", :"agent.load_average", :"agent.cpu", :"agent.disk", :"agent.network", :"agent.plugin"], :message=>"%{value} needs to be :\"remote.dns\", :\"remote.ftp-banner\", :\"remote.http\", :\"remote.imap-banner\", :\"remote.mssql-banner\", :\"remote.mysql-banner\", :\"remote.ping\", :\"remote.pop3-banner\", :\"remote.postgresql-banner\", :\"remote.smtp-banner\", :\"remote.smtp\", :\"remote.ssh\", :\"remote.tcp\", :\"remote.telnet-banner\", :\"agent.filesystem\", :\"agent.memory\", :\"agent.load_average\", :\"agent.cpu\", :\"agent.disk\", :\"agent.network\", :\"agent.plugin\""}

        # @return [Object] Comma-separated list of the names of the monitoring zones the check should run from. Available monitoring zones include mzdfw, mzhkg, mziad, mzlon, mzord and mzsyd. Required for remote.* checks; prohibited for agent.* checks.
        attribute :monitoring_zones_poll

        # @return [Object] One of `target_hostname` and `target_alias` is required for remote.* checks, but prohibited for agent.* checks. The hostname this check should target. Must be a valid IPv4, IPv6, or FQDN.
        attribute :target_hostname

        # @return [Object] One of `target_alias` and `target_hostname` is required for remote.* checks, but prohibited for agent.* checks. Use the corresponding key in the entity's `ip_addresses` hash to resolve an IP address to target.
        attribute :target_alias

        # @return [Object] Additional details specific to the check type. Must be a hash of strings between 1 and 255 characters long, or an array or object containing 0 to 256 items.
        attribute :details

        # @return [Object] If "yes", ensure the check is created, but don't actually use it yet.
        attribute :disabled
        validates :disabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Hash of arbitrary key-value pairs to accompany this check if it fires. Keys and values must be strings between 1 and 255 characters long.
        attribute :metadata

        # @return [Object] The number of seconds between each time the check is performed. Must be greater than the minimum period set on your account.
        attribute :period

        # @return [Object] The number of seconds this check will wait when attempting to collect results. Must be less than the period.
        attribute :timeout
      end
    end
  end
end

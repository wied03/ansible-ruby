# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Deploy, start, stop, update, restart, reinstall servers.
      class Vultr_server < Base
        # @return [String] Name of the server.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Hostname to assign to this server.
        attribute :hostname

        # @return [String, nil] The operating system.,Required if the server does not yet exist.
        attribute :os
        validates :os, type: String

        # @return [Object, nil] The firewall group to assign this server to.
        attribute :firewall_group

        # @return [Array<String>, String, nil] Plan to use for the server.,Required if the server does not yet exist.
        attribute :plan
        validates :plan, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Force stop/start the server if required to apply changes,Otherwise a running server will not be changed.
        attribute :force
        validates :force, type: Symbol

        # @return [Symbol, nil] Whether to send an activation email when the server is ready or not.,Only considered on creation.
        attribute :notify_activate
        validates :notify_activate, type: Symbol

        # @return [Symbol, nil] Whether to enable private networking or not.
        attribute :private_network_enabled
        validates :private_network_enabled, type: Symbol

        # @return [Symbol, nil] Whether to enable automatic backups or not.
        attribute :auto_backup_enabled
        validates :auto_backup_enabled, type: Symbol

        # @return [Symbol, nil] Whether to enable IPv6 or not.
        attribute :ipv6_enabled
        validates :ipv6_enabled, type: Symbol

        # @return [Object, nil] Tag for the server.
        attribute :tag

        # @return [Object, nil] User data to be passed to the server.
        attribute :user_data

        # @return [Object, nil] Name of the startup script to execute on boot.,Only considered while creating the server.
        attribute :startup_script

        # @return [Object, nil] List of SSH keys passed to the server on creation.
        attribute :ssh_keys

        # @return [Object, nil] IP address of the floating IP to use as the main IP of this server.,Only considered on creation.
        attribute :reserved_ip_v4

        # @return [String, nil] Region the server is deployed into.,Required if the server does not yet exist.
        attribute :region
        validates :region, type: String

        # @return [:present, :absent, :restarted, :reinstalled, :started, :stopped, nil] State of the server.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :restarted, :reinstalled, :started, :stopped], :message=>"%{value} needs to be :present, :absent, :restarted, :reinstalled, :started, :stopped"}, allow_nil: true
      end
    end
  end
end

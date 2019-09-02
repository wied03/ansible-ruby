# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls systemd services on remote hosts.
      class Systemd < Base
        # @return [String, nil] Name of the service. When using in a chroot environment you always need to specify the full name i.e. (crond.service).
        attribute :name
        validates :name, type: String

        # @return [:reloaded, :restarted, :started, :stopped, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:reloaded, :restarted, :started, :stopped], :message=>"%{value} needs to be :reloaded, :restarted, :started, :stopped"}, allow_nil: true

        # @return [Symbol, nil] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Symbol, nil] Whether to override existing symlinks.
        attribute :force
        validates :force, type: Symbol

        # @return [Symbol, nil] Whether the unit should be masked or not, a masked unit is impossible to start.
        attribute :masked
        validates :masked, type: Symbol

        # @return [:yes, :no, nil] run daemon-reload before doing any other operations, to make sure systemd has read any changes.
        attribute :daemon_reload
        validates :daemon_reload, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] (deprecated) run ``systemctl`` talking to the service manager of the calling user, rather than the service manager of the system.,This option is deprecated and will eventually be removed in 2.11. The ``scope`` option should be used instead.
        attribute :user
        validates :user, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:system, :user, :global, nil] run systemctl within a given service manager scope, either as the default system scope (system), the current user's scope (user), or the scope of all users (global).
        attribute :scope
        validates :scope, expression_inclusion: {:in=>[:system, :user, :global], :message=>"%{value} needs to be :system, :user, :global"}, allow_nil: true

        # @return [:yes, :no, nil] Do not synchronously wait for the requested operation to finish. Enqueued job will continue without Ansible blocking on its completion.
        attribute :no_block
        validates :no_block, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

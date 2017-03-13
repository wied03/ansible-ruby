# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls systemd services on remote hosts.
      class Systemd < Base
        # @return [String] Name of the service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:started, :stopped, :restarted, :reloaded, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :reloaded], :message=>"%{value} needs to be :started, :stopped, :restarted, :reloaded"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the unit should be masked or not, a masked unit is impossible to start.
        attribute :masked
        validates :masked, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Boolean, nil] run daemon-reload before doing any other operations, to make sure systemd has read any changes.
        attribute :daemon_reload
        validates :daemon_reload, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] run systemctl talking to the service manager of the calling user, rather than the service manager of the system.
        attribute :user
        validates :user, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

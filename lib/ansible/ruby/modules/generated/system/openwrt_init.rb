# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls OpenWrt services on remote hosts.
      class Openwrt_init < Base
        # @return [String] Name of the service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:started, :stopped, :restarted, :reloaded, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:started, :stopped, :restarted, :reloaded], :message=>"%{value} needs to be :started, :stopped, :restarted, :reloaded"}, allow_nil: true

        # @return [Symbol, nil] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Object, nil] If the service does not respond to the 'running' command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a 'running' result.  If the string is found, the service will be assumed to be running.
        attribute :pattern
      end
    end
  end
end

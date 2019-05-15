# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls services on remote hosts. Supported init systems include BSD init, OpenRC, SysV, Solaris SMF, systemd, upstart.
      # For Windows targets, use the M(win_service) module instead.
      class Service < Base
        # @return [String] Name of the service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:reloaded, :restarted, :started, :stopped, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the service.  C(reloaded) will always reload. B(At least one of state and enabled are required.) Note that reloaded will start the service if it is not already started, even if your chosen init system wouldn't normally.
        attribute :state
        validates :state, inclusion: {:in=>[:reloaded, :restarted, :started, :stopped], :message=>"%{value} needs to be :reloaded, :restarted, :started, :stopped"}, allow_nil: true

        # @return [Object, nil] If the service is being C(restarted) then sleep this many seconds between the stop and start command. This helps to workaround badly behaving init scripts that exit immediately after signaling a process to stop.
        attribute :sleep

        # @return [String, nil] If the service does not respond to the status command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.  If the string is found, the service will be assumed to be started.
        attribute :pattern
        validates :pattern, type: String

        # @return [Boolean, nil] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] For OpenRC init scripts (ex: Gentoo) only.  The runlevel that this service belongs to.
        attribute :runlevel
        validates :runlevel, type: String

        # @return [Object, nil] Additional arguments provided on the command line
        attribute :arguments

        # @return [String, nil] The service module actually uses system specific modules, normally through auto detection, this setting can force a specific module.,Normally it uses the value of the 'ansible_service_mgr' fact and falls back to the old 'service' module when none matching is found.
        attribute :use
        validates :use, type: String
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Service < Base
        # @return [String] Name of the service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the service.  C(reloaded) will always reload. B(At least one of state and enabled are required.)
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :reloaded], :message=>"%{value} needs to be :started, :stopped, :restarted, :reloaded"}, allow_nil: true

        # @return [Object] If the service is being C(restarted) then sleep this many seconds between the stop and start command. This helps to workaround badly behaving init scripts that exit immediately after signaling a process to stop.
        attribute :sleep

        # @return [String] If the service does not respond to the status command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.  If the string is found, the service will be assumed to be running.
        attribute :pattern
        validates :pattern, type: String

        # @return [String] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] For OpenRC init scripts (ex: Gentoo) only.  The runlevel that this service belongs to.
        attribute :runlevel
        validates :runlevel, type: String

        # @return [Object] Additional arguments provided on the command line
        attribute :arguments
      end
    end
  end
end

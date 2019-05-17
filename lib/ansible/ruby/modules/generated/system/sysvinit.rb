# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls services on target hosts that use the SysV init system.
      class Sysvinit < Base
        # @return [String] Name of the service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:started, :stopped, :restarted, :reloaded, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. Not all init scripts support C(restarted) nor C(reloaded) natively, so these will both trigger a stop and start as needed.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :reloaded], :message=>"%{value} needs to be :started, :stopped, :restarted, :reloaded"}, allow_nil: true

        # @return [Symbol, nil] Whether the service should start on boot. B(At least one of state and enabled are required.)
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Integer, nil] If the service is being C(restarted) or C(reloaded) then sleep this many seconds between the stop and start command. This helps to workaround badly behaving services.
        attribute :sleep
        validates :sleep, type: Integer

        # @return [Object, nil] A substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.,If the string is found, the service will be assumed to be running.,This option is mainly for use with init scripts that don't support the 'status' option.
        attribute :pattern

        # @return [Array<Integer>, Integer, nil] The runlevels this script should be enabled/disabled from.,Use this to override the defaults set by the package or init script itself.
        attribute :runlevels
        validates :runlevels, type: TypeGeneric.new(Integer)

        # @return [Object, nil] Additional arguments provided on the command line that some init scripts accept.
        attribute :arguments

        # @return [Symbol, nil] Have the module daemonize as the service itself might not do so properly.,This is useful with badly written init scripts or deamons, which commonly manifests as the task hanging as it is still holding the tty or the service dying when the task is over as the connection closes the session.
        attribute :daemonize
        validates :daemonize, type: Symbol
      end
    end
  end
end

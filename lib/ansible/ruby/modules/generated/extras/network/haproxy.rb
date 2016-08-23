# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Haproxy < Base
        # @return [String] Name of the HAProxy backend pool.
        attribute :backend
        validates :backend, type: String

        # @return [Object] Name of the backend host to change.
        attribute :host
        validates :host, presence: true

        # @return [Object] When disabling a server, immediately terminate all the sessions attached to the specified server. This can be used to terminate long-running sessions after a server is put into maintenance mode.
        attribute :shutdown_sessions

        # @return [String] Path to the HAProxy socket file.
        attribute :socket
        validates :socket, type: String

        # @return [Object] Desired state of the provided backend host.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}

        # @return [Object] Wait until the server reports a status of 'UP' when `state=enabled`, or status of 'MAINT' when `state=disabled`.
        attribute :wait

        # @return [Fixnum] Number of seconds to wait between retries.
        attribute :wait_interval
        validates :wait_interval, type: Fixnum

        # @return [Fixnum] Number of times to check for status after changing the state.
        attribute :wait_retries
        validates :wait_retries, type: Fixnum

        # @return [Object] The value passed in argument. If the value ends with the `%` sign, then the new weight will be relative to the initially configured weight. Relative weights are only permitted between 0 and 100% and absolute weights are permitted between 0 and 256.
        attribute :weight
      end
    end
  end
end

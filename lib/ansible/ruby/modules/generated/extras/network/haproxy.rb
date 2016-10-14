# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable, disable, and set weights for HAProxy backend servers using socket commands.
      class Haproxy < Base
        # @return [String, nil] Name of the HAProxy backend pool.
        attribute :backend
        validates :backend, type: String

        # @return [String] Name of the backend host to change.
        attribute :host
        validates :host, presence: true, type: String

        # @return [Boolean, nil] When disabling a server, immediately terminate all the sessions attached to the specified server. This can be used to terminate long-running sessions after a server is put into maintenance mode.
        attribute :shutdown_sessions
        validates :shutdown_sessions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to the HAProxy socket file.
        attribute :socket
        validates :socket, type: String

        # @return [:enabled, :disabled] Desired state of the provided backend host.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}

        # @return [Boolean, nil] Wait until the server reports a status of 'UP' when `state=enabled`, or status of 'MAINT' when `state=disabled`.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Number of seconds to wait between retries.
        attribute :wait_interval
        validates :wait_interval, type: Integer

        # @return [Integer, nil] Number of times to check for status after changing the state.
        attribute :wait_retries
        validates :wait_retries, type: Integer

        # @return [String, nil] The value passed in argument. If the value ends with the `%` sign, then the new weight will be relative to the initially configured weight. Relative weights are only permitted between 0 and 100% and absolute weights are permitted between 0 and 256.
        attribute :weight
        validates :weight, type: String
      end
    end
  end
end

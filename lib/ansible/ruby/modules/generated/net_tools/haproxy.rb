# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable, disable, drain and set weights for HAProxy backend servers using socket commands.
      class Haproxy < Base
        # @return [String, nil] Name of the HAProxy backend pool.
        attribute :backend
        validates :backend, type: String

        # @return [Boolean, nil] Wait until the server has no active connections or until the timeout determined by wait_interval and wait_retries is reached.  Continue only after the status changes to 'MAINT'.  This overrides the shutdown_sessions option.
        attribute :drain
        validates :drain, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the backend host to change.
        attribute :host
        validates :host, presence: true, type: String

        # @return [:yes, :no, nil] When disabling a server, immediately terminate all the sessions attached to the specified server. This can be used to terminate long-running sessions after a server is put into maintenance mode. Overridden by the drain option.
        attribute :shutdown_sessions
        validates :shutdown_sessions, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Path to the HAProxy socket file.
        attribute :socket
        validates :socket, type: String

        # @return [:enabled, :disabled, :drain] Desired state of the provided backend host.,Note that C(drain) state was added in version 2.4. It is supported only by HAProxy version 1.5 or later, if used on versions < 1.5, it will be ignored.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled, :drain], :message=>"%{value} needs to be :enabled, :disabled, :drain"}

        # @return [:yes, :no, nil] Fail whenever trying to enable/disable a backend host that does not exist
        attribute :fail_on_not_found
        validates :fail_on_not_found, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Wait until the server reports a status of 'UP' when `state=enabled`, status of 'MAINT' when `state=disabled` or status of 'DRAIN' when `state=drain`
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Number of seconds to wait between retries.
        attribute :wait_interval
        validates :wait_interval, type: Integer

        # @return [Integer, nil] Number of times to check for status after changing the state.
        attribute :wait_retries
        validates :wait_retries, type: Integer

        # @return [Integer, nil] The value passed in argument. If the value ends with the `%` sign, then the new weight will be relative to the initially configured weight. Relative weights are only permitted between 0 and 100% and absolute weights are permitted between 0 and 256.
        attribute :weight
        validates :weight, type: Integer
      end
    end
  end
end

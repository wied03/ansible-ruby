# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Waits for a total of C(timeout) seconds.
      # Retries the transport connection after a timeout of C(connect_timeout).
      # Tests the transport connection every C(sleep) seconds.
      # This module makes use of internal ansible transport (and configuration) and the ping/win_ping module to guarantee correct end-to-end functioning.
      # This module is also supported for Windows targets.
      class Wait_for_connection < Base
        # @return [Integer, nil] Maximum number of seconds to wait for a connection to happen before closing and retrying.
        attribute :connect_timeout
        validates :connect_timeout, type: Integer

        # @return [Integer, nil] Number of seconds to wait before starting to poll.
        attribute :delay
        validates :delay, type: Integer

        # @return [Integer, nil] Number of seconds to sleep between checks.
        attribute :sleep
        validates :sleep, type: Integer

        # @return [Integer, nil] Maximum number of seconds to wait for.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end

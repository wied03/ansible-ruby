# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # You can wait for BIG-IP to be "ready". By "ready", we mean that BIG-IP is ready to accept configuration.
      # This module can take into account situations where the device is in the middle of rebooting due to a configuration change.
      class Bigip_wait < Base
        # @return [Integer, nil] Maximum number of seconds to wait for.,When used without other conditions it is equivalent of just sleeping.,The default timeout is deliberately set to 2 hours because no individual REST API.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] Number of seconds to wait before starting to poll.
        attribute :delay
        validates :delay, type: Integer

        # @return [Integer, nil] Number of seconds to sleep between checks, before 2.3 this was hardcoded to 1 second.
        attribute :sleep
        validates :sleep, type: Integer

        # @return [Object, nil] This overrides the normal error message from a failure to meet the required conditions.
        attribute :msg
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Check if PAN-OS device is ready for being configured (no pending jobs).
      # The check could be done once or multiple times until the device is ready.
      class Panos_check < Base
        # @return [String, nil] timeout of API calls
        attribute :timeout
        validates :timeout, type: String

        # @return [String, nil] time waited between checks
        attribute :interval
        validates :interval, type: String
      end
    end
  end
end

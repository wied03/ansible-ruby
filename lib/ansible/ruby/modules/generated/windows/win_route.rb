# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove a static route.
      class Win_route < Base
        # @return [String] Destination IP address in CIDR format (ip address/prefix length)
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [String, nil] The gateway used by the static route.,If C(gateway) is not provided it will be set to C(0.0.0.0).
        attribute :gateway
        validates :gateway, type: String

        # @return [Integer, nil] Metric used by the static route.
        attribute :metric
        validates :metric, type: Integer

        # @return [:absent, :present, nil] If C(absent), it removes a network static route.,If C(present), it adds a network static route.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

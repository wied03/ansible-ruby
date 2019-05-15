# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Tests reachability using ping from network device to a remote destination.
      # For Windows targets, use the M(win_ping) module instead.
      # For targets running Python, use the M(ping) module instead.
      class Net_ping < Base
        # @return [Integer, nil] Number of packets to send.
        attribute :count
        validates :count, type: Integer

        # @return [String] The IP Address or hostname (resolvable by switch) of the remote node.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] The source IP Address.
        attribute :source
        validates :source, type: String

        # @return [:absent, :present, nil] Determines if the expected result is success or fail.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The VRF to use for forwarding.
        attribute :vrf
        validates :vrf, type: String
      end
    end
  end
end

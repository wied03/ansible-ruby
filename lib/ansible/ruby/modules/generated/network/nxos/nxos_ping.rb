# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Tests reachability using ping from switch to a remote destination.
      # For a general purpose network module, see the M(net_ping) module.
      # For Windows targets, use the M(win_ping) module instead.
      # For targets running Python, use the M(ping) module instead.
      class Nxos_ping < Base
        # @return [String] IP address or hostname (resolvable by switch) of remote node.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Integer, nil] Number of packets to send.
        attribute :count
        validates :count, type: Integer

        # @return [Object, nil] Source IP Address or hostname (resolvable by switch)
        attribute :source

        # @return [String, nil] Outgoing VRF.
        attribute :vrf
        validates :vrf, type: String

        # @return [:absent, :present, nil] Determines if the expected result is success or fail.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

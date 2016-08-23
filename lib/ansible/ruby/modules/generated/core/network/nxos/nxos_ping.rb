# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_ping < Base
        # @return [String] IP address or hostname (resolvable by switch) of remote node
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Integer, nil] Number of packets to send
        attribute :count
        validates :count, type: Integer

        # @return [Object, nil] Source IP Address
        attribute :source

        # @return [String, nil] Outgoing VRF
        attribute :vrf
        validates :vrf, type: String
      end
    end
  end
end

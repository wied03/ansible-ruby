# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(wakeonlan) module sends magic Wake-on-LAN (WoL) broadcast packets.
      class Wakeonlan < Base
        # @return [String] MAC address to send Wake-on-LAN broadcast packet for.
        attribute :mac
        validates :mac, presence: true, type: String

        # @return [String, nil] Network broadcast address to use for broadcasting magic Wake-on-LAN packet.
        attribute :broadcast
        validates :broadcast, type: String

        # @return [Integer, nil] UDP port to use for magic Wake-on-LAN packet.
        attribute :port
        validates :port, type: Integer
      end
    end
  end
end

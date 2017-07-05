# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Layer 3 attributes for IPv4 and IPv6 interfaces.
      class Nxos_ip_interface < Base
        # @return [String] Full name of interface, i.e. Ethernet1/1, vlan10.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [String, nil] IPv4 or IPv6 Address.
        attribute :addr
        validates :addr, type: String

        # @return [Integer, nil] Subnet mask for IPv4 or IPv6 Address in decimal format.
        attribute :mask
        validates :mask, type: Integer

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

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

        # @return [:v4, :v6, nil] Version of IP address. If the IP address is IPV4 version should be v4. If the IP address is IPV6 version should be v6.
        attribute :version
        validates :version, inclusion: {:in=>[:v4, :v6], :message=>"%{value} needs to be :v4, :v6"}, allow_nil: true

        # @return [Integer, nil] Subnet mask for IPv4 or IPv6 Address in decimal format.
        attribute :mask
        validates :mask, type: Integer

        # @return [Integer, nil] Configures IEEE 802.1Q VLAN encapsulation on the subinterface. The range is from 2 to 4093.
        attribute :dot1q
        validates :dot1q, type: Integer

        # @return [Integer, nil] Route tag for IPv4 or IPv6 Address in integer format.
        attribute :tag
        validates :tag, type: Integer

        # @return [:yes, :no, nil] Allow to configure IPv4 secondary addresses on interface.
        attribute :allow_secondary
        validates :allow_secondary, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_ip_interface < Base
        # @return [String] Full name of interface, i.e. Ethernet1/1, vlan10
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [String] IPv4 or IPv6 Address
        attribute :addr
        validates :addr, type: String

        # @return [String] Subnet mask for IPv4 or IPv6 Address in decimal format
        attribute :mask
        validates :mask, type: String

        # @return [:present, :absent, nil] Specify desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

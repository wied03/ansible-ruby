# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_switchport < Base
        # @return [String] Full name of the interface, i.e. Ethernet1/1
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:access, :trunk, nil] Mode for the Layer 2 port
        attribute :mode
        validates :mode, inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [String] if mode=access, used as the access vlan id
        attribute :access_vlan
        validates :access_vlan, type: String

        # @return [String] if mode=trunk, used as the trunk native vlan id
        attribute :native_vlan
        validates :native_vlan, type: String

        # @return [String] if mode=trunk, used as the vlan range to ADD or REMOVE from the trunk
        attribute :trunk_vlans
        validates :trunk_vlans, type: String

        # @return [:present, :absent, :unconfigured, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :unconfigured], :message=>"%{value} needs to be :present, :absent, :unconfigured"}, allow_nil: true
      end
    end
  end
end

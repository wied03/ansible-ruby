# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages physical attributes of interfaces of NX-OS switches.
      class Nxos_interface < Base
        # @return [String] Full name of interface, i.e. Ethernet1/1, port-channel10.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:loopback, :portchannel, :svi, :nve, nil] Interface type to be unconfigured from the device.
        attribute :interface_type
        validates :interface_type, inclusion: {:in=>[:loopback, :portchannel, :svi, :nve], :message=>"%{value} needs to be :loopback, :portchannel, :svi, :nve"}, allow_nil: true

        # @return [:up, :down, nil] Administrative state of the interface.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [String, nil] Interface description.
        attribute :description
        validates :description, type: String

        # @return [:layer2, :layer3, nil] Manage Layer 2 or Layer 3 state of the interface.
        attribute :mode
        validates :mode, inclusion: {:in=>[:layer2, :layer3], :message=>"%{value} needs to be :layer2, :layer3"}, allow_nil: true

        # @return [:enable, :disable, nil] Enable/Disable ip forward feature on SVIs.
        attribute :ip_forward
        validates :ip_forward, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:true, :false, nil] Associate SVI with anycast gateway under VLAN configuration mode.
        attribute :fabric_forwarding_anycast_gateway
        validates :fabric_forwarding_anycast_gateway, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:present, :absent, :default] Specify desired state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :default], :message=>"%{value} needs to be :present, :absent, :default"}
      end
    end
  end
end

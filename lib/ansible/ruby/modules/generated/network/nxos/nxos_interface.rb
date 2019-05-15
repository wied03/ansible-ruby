# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages physical attributes of interfaces of NX-OS switches.
      class Nxos_interface < Base
        # @return [String] Full name of interface, i.e. Ethernet1/1, port-channel10.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:loopback, :portchannel, :svi, :nve, nil] Interface type to be unconfigured from the device.
        attribute :interface_type
        validates :interface_type, inclusion: {:in=>[:loopback, :portchannel, :svi, :nve], :message=>"%{value} needs to be :loopback, :portchannel, :svi, :nve"}, allow_nil: true

        # @return [Integer, nil] Interface link speed. Applicable for ethernet interface only.
        attribute :speed
        validates :speed, type: Integer

        # @return [:up, :down, nil] Administrative state of the interface.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [String, nil] Interface description.
        attribute :description
        validates :description, type: String

        # @return [:layer2, :layer3, nil] Manage Layer 2 or Layer 3 state of the interface. This option is supported for ethernet and portchannel interface. Applicable for ethernet and portchannel interface only.
        attribute :mode
        validates :mode, inclusion: {:in=>[:layer2, :layer3], :message=>"%{value} needs to be :layer2, :layer3"}, allow_nil: true

        # @return [Object, nil] MTU for a specific interface. Must be an even number between 576 and 9216. Applicable for ethernet interface only.
        attribute :mtu

        # @return [:enable, :disable, nil] Enable/Disable ip forward feature on SVIs.
        attribute :ip_forward
        validates :ip_forward, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Associate SVI with anycast gateway under VLAN configuration mode. Applicable for SVI interface only.
        attribute :fabric_forwarding_anycast_gateway

        # @return [:full, :half, :auto, nil] Interface link status. Applicable for ethernet interface only.
        attribute :duplex
        validates :duplex, inclusion: {:in=>[:full, :half, :auto], :message=>"%{value} needs to be :full, :half, :auto"}, allow_nil: true

        # @return [String, nil] Transmit rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :tx_rate
        validates :tx_rate, type: String

        # @return [String, nil] Receiver rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :rx_rate
        validates :rx_rate, type: String

        # @return [Array<Hash>, Hash, nil] Check the operational state of given interface C(name) for LLDP neighbor.,The following suboptions are available. This is state check parameter only.
        attribute :neighbors
        validates :neighbors, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of Interfaces definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :default, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :default], :message=>"%{value} needs to be :present, :absent, :default"}, allow_nil: true

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.
        attribute :delay
        validates :delay, type: Integer
      end
    end
  end
end

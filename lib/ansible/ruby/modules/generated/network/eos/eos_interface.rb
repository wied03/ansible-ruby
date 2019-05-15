# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Interfaces on Arista EOS network devices.
      class Eos_interface < Base
        # @return [String] Name of the Interface to be configured on remote device. The name of interface should be in expanded format and not abbreviated.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of Interface upto 240 characters.
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Interface link status. If the value is I(True) the interface state will be enabled, else if value is I(False) interface will be in disable (shutdown) state.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] This option configures autoneg and speed/duplex/flowcontrol for the interface given in C(name) option.
        attribute :speed
        validates :speed, type: String

        # @return [Integer, nil] Set maximum transmission unit size in bytes of transmit packet for the interface given in C(name) option.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [String, nil] Transmit rate in bits per second (bps) for the interface given in C(name) option.,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :tx_rate
        validates :tx_rate, type: String

        # @return [String, nil] Receiver rate in bits per second (bps) for the interface given in C(name) option.,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :rx_rate
        validates :rx_rate, type: String

        # @return [Array<Hash>, Hash, nil] Check the operational state of given interface C(name) for LLDP neighbor.,The following suboptions are available.
        attribute :neighbors
        validates :neighbors, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of Interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and other options as required.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).
        attribute :delay
        validates :delay, type: Integer

        # @return [:present, :absent, :up, :down, nil] State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true
      end
    end
  end
end

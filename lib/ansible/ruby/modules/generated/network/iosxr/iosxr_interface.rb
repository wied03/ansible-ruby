# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Interfaces on Cisco IOS XR network devices.
      class Iosxr_interface < Base
        # @return [String] Name of the interface to configure in C(type + path) format. e.g. C(GigabitEthernet0/0/0/0)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of Interface being configured.
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Removes the shutdown configuration, which removes the forced administrative down on the interface, enabling it to move to an up or down state.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:active, :preconfigure, nil] Whether the interface is C(active) or C(preconfigured). Preconfiguration allows you to configure modular services cards before they are inserted into the router. When the cards are inserted, they are instantly configured. Active cards are the ones already inserted.
        attribute :active
        validates :active, expression_inclusion: {:in=>[:active, :preconfigure], :message=>"%{value} needs to be :active, :preconfigure"}, allow_nil: true

        # @return [10, 100, 1000, nil] Configure the speed for an interface. Default is auto-negotiation when not configured.
        attribute :speed
        validates :speed, expression_inclusion: {:in=>[10, 100, 1000], :message=>"%{value} needs to be 10, 100, 1000"}, allow_nil: true

        # @return [Integer, nil] Sets the MTU value for the interface. Range is between 64 and 65535'
        attribute :mtu
        validates :mtu, type: Integer

        # @return [:full, :half, nil] Configures the interface duplex mode. Default is auto-negotiation when not configured.
        attribute :duplex
        validates :duplex, expression_inclusion: {:in=>[:full, :half], :message=>"%{value} needs to be :full, :half"}, allow_nil: true

        # @return [Object, nil] Transmit rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :tx_rate

        # @return [Object, nil] Receiver rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :rx_rate

        # @return [Array<Hash>, Hash, nil] List of Interface definitions. Include multiple interface configurations together, one each on a separate line
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).
        attribute :delay
        validates :delay, type: Integer

        # @return [:present, :absent, :up, :down, nil] State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true
      end
    end
  end
end

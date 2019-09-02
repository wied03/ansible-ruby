# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Interfaces on Juniper JUNOS network devices.
      class Junos_interface < Base
        # @return [String] Name of the Interface.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of Interface.
        attribute :description
        validates :description, type: String

        # @return [FalseClass, TrueClass, nil] Configure interface link status.
        attribute :enabled
        validates :enabled, type: MultipleTypes.new(FalseClass, TrueClass)

        # @return [String, nil] Interface link speed.
        attribute :speed
        validates :speed, type: String

        # @return [Integer, nil] Maximum size of transmit packet.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [:full, :half, :auto, nil] Interface link status.
        attribute :duplex
        validates :duplex, expression_inclusion: {:in=>[:full, :half, :auto], :message=>"%{value} needs to be :full, :half, :auto"}, allow_nil: true

        # @return [String, nil] Transmit rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :tx_rate
        validates :tx_rate, type: String

        # @return [String, nil] Receiver rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :rx_rate
        validates :rx_rate, type: String

        # @return [Array<Hash>, Hash, nil] Check the operational state of given interface C(name) for LLDP neighbor.,The following suboptions are available.
        attribute :neighbors
        validates :neighbors, type: TypeGeneric.new(Hash)

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).
        attribute :delay
        validates :delay, type: Integer

        # @return [Array<Hash>, Hash, nil] List of Interfaces definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :up, :down, nil] State of the Interface configuration, C(up) idicates present and operationally up and C(down) indicates present and operationally C(down)
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

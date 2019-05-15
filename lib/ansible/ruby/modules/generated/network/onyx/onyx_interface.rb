# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Interfaces on Mellanox ONYX network devices.
      class Onyx_interface < Base
        # @return [String] Name of the Interface.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of Interface.
        attribute :description
        validates :description, type: String

        # @return [TrueClass, FalseClass, nil] Interface link status.
        attribute :enabled
        validates :enabled, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [:"1G", :"10G", :"25G", :"40G", :"50G", :"56G", :"100G", nil] Interface link speed.
        attribute :speed
        validates :speed, inclusion: {:in=>[:"1G", :"10G", :"25G", :"40G", :"50G", :"56G", :"100G"], :message=>"%{value} needs to be :\"1G\", :\"10G\", :\"25G\", :\"40G\", :\"50G\", :\"56G\", :\"100G\""}, allow_nil: true

        # @return [Integer, nil] Maximum size of transmit packet.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [Object, nil] List of Interfaces definitions.
        attribute :aggregate

        # @return [:full, :half, :auto, nil] Interface link status
        attribute :duplex
        validates :duplex, inclusion: {:in=>[:full, :half, :auto], :message=>"%{value} needs to be :full, :half, :auto"}, allow_nil: true

        # @return [Object, nil] Transmit rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :tx_rate

        # @return [Object, nil] Receiver rate in bits per second (bps).,This is state check parameter only.,Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)
        attribute :rx_rate

        # @return [Integer, nil] Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down).
        attribute :delay
        validates :delay, type: Integer

        # @return [Boolean, nil] Purge Interfaces not defined in the aggregate parameter. This applies only for logical interface.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :up, :down, nil] State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true
      end
    end
  end
end

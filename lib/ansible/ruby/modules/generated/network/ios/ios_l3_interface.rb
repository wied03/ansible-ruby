# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of Layer-3 interfaces on IOS network devices.
      class Ios_l3_interface < Base
        # @return [String, nil] Name of the Layer-3 interface to be configured eg. GigabitEthernet0/2
        attribute :name
        validates :name, type: String

        # @return [String, nil] IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24
        attribute :ipv4
        validates :ipv4, type: String

        # @return [String, nil] IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64
        attribute :ipv6
        validates :ipv6, type: String

        # @return [Array<Hash>, Hash, nil] List of Layer-3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

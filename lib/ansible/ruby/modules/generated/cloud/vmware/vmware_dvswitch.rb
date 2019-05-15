# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or remove a distributed vSwitch
      class Vmware_dvswitch < Base
        # @return [String] The name of the datacenter that will contain the dvSwitch
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String] The name of the switch to create or remove
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [String, nil] The version of the switch to create. Can be 6.5.0, 6.0.0, 5.5.0, 5.1.0, 5.0.0 with a vcenter running vSphere 6.5,Needed if you have a vcenter version > ESXi version to join DVS. If not specified version=version of vcenter
        attribute :switch_version
        validates :switch_version, type: String

        # @return [Integer] The switch maximum transmission unit
        attribute :mtu
        validates :mtu, presence: true, type: Integer

        # @return [Integer] Quantity of uplink per ESXi host added to the switch
        attribute :uplink_quantity
        validates :uplink_quantity, presence: true, type: Integer

        # @return [:cdp, :lldp] Link discovery protocol between Cisco and Link Layer discovery
        attribute :discovery_proto
        validates :discovery_proto, presence: true, inclusion: {:in=>[:cdp, :lldp], :message=>"%{value} needs to be :cdp, :lldp"}

        # @return [:both, :none, :advertise, :listen, nil] Select the discovery operation
        attribute :discovery_operation
        validates :discovery_operation, inclusion: {:in=>[:both, :none, :advertise, :listen], :message=>"%{value} needs to be :both, :none, :advertise, :listen"}, allow_nil: true

        # @return [:present, :absent, nil] Create or remove dvSwitch
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

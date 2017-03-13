# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VXLAN Network Virtualization Endpoint (NVE) overlay interface that terminates VXLAN tunnels.
      class Nxos_vxlan_vtep < Base
        # @return [String] Interface name for the VXLAN Network Virtualization Endpoint.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [String, nil] Description of the NVE interface.
        attribute :description
        validates :description, type: String

        # @return [:true, :false, nil] Specify mechanism for host reachability advertisement.
        attribute :host_reachability
        validates :host_reachability, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Boolean, nil] Administratively shutdown the NVE interface.
        attribute :shutdown
        validates :shutdown, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specify the loopback interface whose IP address should be used for the NVE interface.
        attribute :source_interface
        validates :source_interface, type: String

        # @return [Integer, nil] Suppresses advertisement of the NVE loopback address until the overlay has converged.
        attribute :source_interface_hold_down_time
        validates :source_interface_hold_down_time, type: Integer

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

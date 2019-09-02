# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add, remove and update a VMware Standard Switch to an ESXi host.
      class Vmware_vswitch < Base
        # @return [String] vSwitch name to add.,Alias C(switch) is added in version 2.4.
        attribute :switch
        validates :switch, presence: true, type: String

        # @return [Object, nil] A list of vmnic names or vmnic name to attach to vSwitch.,Alias C(nics) is added in version 2.4.
        attribute :nics

        # @return [Integer, nil] Number of port to configure on vSwitch.
        attribute :number_of_ports
        validates :number_of_ports, type: Integer

        # @return [Integer, nil] MTU to configure on vSwitch.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [:absent, :present, nil] Add or remove the switch.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Manage the vSwitch using this ESXi host system.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

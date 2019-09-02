# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage network interfaces of Virtual Machines in oVirt/RHV.
      class Ovirt_nic < Base
        # @return [String] Name of the network interface to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the Virtual Machine to manage.,You must provide either C(vm) parameter or C(template) parameter.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Name of the template to manage.,You must provide either C(vm) parameter or C(template) parameter.
        attribute :template
        validates :template, type: String

        # @return [:absent, :plugged, :present, :unplugged, nil] Should the Virtual Machine NIC be present/absent/plugged/unplugged.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :plugged, :present, :unplugged], :message=>"%{value} needs to be :absent, :plugged, :present, :unplugged"}, allow_nil: true

        # @return [String, nil] Logical network to which the VM network interface should use, by default Empty network is used if network is not specified.
        attribute :network
        validates :network, type: String

        # @return [String, nil] Virtual network interface profile to be attached to VM network interface.
        attribute :profile
        validates :profile, type: String

        # @return [String, nil] Type of the network interface. For example e1000, pci_passthrough, rtl8139, rtl8139_virtio, spapr_vlan or virtio.,It's required parameter when creating the new NIC.
        attribute :interface
        validates :interface, type: String

        # @return [String, nil] Custom MAC address of the network interface, by default it's obtained from MAC pool.
        attribute :mac_address
        validates :mac_address, type: String
      end
    end
  end
end

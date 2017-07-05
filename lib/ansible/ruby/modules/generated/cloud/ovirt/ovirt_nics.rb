# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage network interfaces of Virtual Machines in oVirt.
      class Ovirt_nics < Base
        # @return [String] Name of the network interface to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the Virtual Machine to manage.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [:present, :absent, :plugged, :unplugged, nil] Should the Virtual Machine NIC be present/absent/plugged/unplugged.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :plugged, :unplugged], :message=>"%{value} needs to be :present, :absent, :plugged, :unplugged"}, allow_nil: true

        # @return [String, nil] Logical network to which the VM network interface should use, by default Empty network is used if network is not specified.
        attribute :network
        validates :network, type: String

        # @return [String, nil] Virtual network interface profile to be attached to VM network interface.
        attribute :profile
        validates :profile, type: String

        # @return [:virtio, :e1000, :rtl8139, :pci_passthrough, :rtl8139_virtio, :spapr_vlan, nil] Type of the network interface.
        attribute :interface
        validates :interface, inclusion: {:in=>[:virtio, :e1000, :rtl8139, :pci_passthrough, :rtl8139_virtio, :spapr_vlan], :message=>"%{value} needs to be :virtio, :e1000, :rtl8139, :pci_passthrough, :rtl8139_virtio, :spapr_vlan"}, allow_nil: true

        # @return [String, nil] Custom MAC address of the network interface, by default it's obtained from MAC pool.
        attribute :mac_address
        validates :mac_address, type: String
      end
    end
  end
end

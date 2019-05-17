# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage host networks in oVirt/RHV.
      class Ovirt_host_network < Base
        # @return [String] Name of the host to manage networks for.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the host be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash, nil] Dictionary describing network bond:,C(name) - Bond name.,C(mode) - Bonding mode.,C(options) - Bonding options.,C(interfaces) - List of interfaces to create a bond.
        attribute :bond
        validates :bond, type: Hash

        # @return [String, nil] Name of the network interface where logical network should be attached.
        attribute :interface
        validates :interface, type: String

        # @return [Array<Hash>, Hash, nil] List of dictionary describing networks to be attached to interface or bond:,C(name) - Name of the logical network to be assigned to bond or interface.,C(boot_protocol) - Boot protocol one of the I(none), I(static) or I(dhcp).,C(address) - IP address in case of I(static) boot protocol is used.,C(netmask) - Subnet mask in case of I(static) boot protocol is used.,C(gateway) - Gateway in case of I(static) boot protocol is used.,C(version) - IP version. Either v4 or v6. Default is v4.
        attribute :networks
        validates :networks, type: TypeGeneric.new(Hash)

        # @return [Object, nil] List of names of the network label to be assigned to bond or interface.
        attribute :labels

        # @return [Symbol, nil] If I(true) verify connectivity between host and engine.,Network configuration changes will be rolled back if connectivity between engine and the host is lost after changing network configuration.
        attribute :check
        validates :check, type: Symbol

        # @return [Symbol, nil] If I(true) network configuration will be persistent, by default they are temporary.
        attribute :save
        validates :save, type: Symbol
      end
    end
  end
end

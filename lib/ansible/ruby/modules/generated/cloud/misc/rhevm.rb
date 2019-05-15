# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module only supports oVirt/RHEV version 3. A newer module M(ovirt_vms) supports oVirt/RHV version 4.
      # Allows you to create/remove/update or powermanage virtual machines on a RHEV/oVirt platform.
      class Rhevm < Base
        # @return [String, nil] The user to authenticate with.
        attribute :user
        validates :user, type: String

        # @return [String, nil] The name/ip of your RHEV-m/oVirt instance.
        attribute :server
        validates :server, type: String

        # @return [String, nil] The port on which the API is reacheable.
        attribute :port
        validates :port, type: String

        # @return [String, nil] A boolean switch to make a secure or insecure connection to the server.
        attribute :insecure_api
        validates :insecure_api, type: String

        # @return [String, nil] The name of the VM.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The rhev/ovirt cluster in which you want you VM to start.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The rhev/ovirt datacenter in which you want you VM to start.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [:ping, :present, :absent, :up, :down, :restarted, :cd, :info, nil] This serves to create/remove/update or powermanage your VM.
        attribute :state
        validates :state, inclusion: {:in=>[:ping, :present, :absent, :up, :down, :restarted, :cd, :info], :message=>"%{value} needs to be :ping, :present, :absent, :up, :down, :restarted, :cd, :info"}, allow_nil: true

        # @return [String, nil] The template to use for the VM.
        attribute :image
        validates :image, type: String

        # @return [:server, :desktop, :host, nil] To define if the VM is a server or desktop.
        attribute :type
        validates :type, inclusion: {:in=>[:server, :desktop, :host], :message=>"%{value} needs to be :server, :desktop, :host"}, allow_nil: true

        # @return [Object, nil] The host you wish your VM to run on.
        attribute :vmhost

        # @return [String, nil] The number of CPUs you want in your VM.
        attribute :vmcpu
        validates :vmcpu, type: String

        # @return [String, nil] This parameter is used to configure the cpu share.
        attribute :cpu_share
        validates :cpu_share, type: String

        # @return [String, nil] The amount of memory you want your VM to use (in GB).
        attribute :vmmem
        validates :vmmem, type: String

        # @return [String, nil] The operationsystem option in RHEV/oVirt.
        attribute :osver
        validates :osver, type: String

        # @return [String, nil] The minimum amount of memory you wish to reserve for this system.
        attribute :mempol
        validates :mempol, type: String

        # @return [String, nil] To make your VM High Available.
        attribute :vm_ha
        validates :vm_ha, type: String

        # @return [Array<Hash>, Hash, nil] This option uses complex arguments and is a list of disks with the options name, size and domain.
        attribute :disks
        validates :disks, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] This option uses complex arguments and is a list of interfaces with the options name and vlan.
        attribute :ifaces
        validates :ifaces, type: TypeGeneric.new(Hash)

        # @return [String, nil] This option uses complex arguments and is a list of items that specify the bootorder.
        attribute :boot_order
        validates :boot_order, type: String

        # @return [Boolean, nil] This option sets the delete protection checkbox.
        attribute :del_prot
        validates :del_prot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The CD you wish to have mounted on the VM when I(state = 'CD').
        attribute :cd_drive
        validates :cd_drive, type: String

        # @return [Object, nil] The timeout you wish to define for power actions.,When I(state = 'up'),When I(state = 'down'),When I(state = 'restarted')
        attribute :timeout
      end
    end
  end
end

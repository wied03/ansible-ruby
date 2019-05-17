# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage logical networks in oVirt/RHV
      class Ovirt_network < Base
        # @return [String] Name of the network to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the network be present or absent
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Datacenter name where network reside.
        attribute :data_center
        validates :data_center, type: String

        # @return [Object, nil] Description of the network.
        attribute :description

        # @return [Object, nil] Comment of the network.
        attribute :comment

        # @return [Integer, nil] Specify VLAN tag.
        attribute :vlan_tag
        validates :vlan_tag, type: Integer

        # @return [Symbol, nil] If I(True) network will be marked as network for VM.,VM network carries traffic relevant to the virtual machine.
        attribute :vm_network
        validates :vm_network, type: Symbol

        # @return [Object, nil] Maximum transmission unit (MTU) of the network.
        attribute :mtu

        # @return [Object, nil] List of dictionaries describing how the network is managed in specific cluster.,C(name) - Cluster name.,C(assigned) - I(true) if the network should be assigned to cluster. Default is I(true).,C(required) - I(true) if the network must remain operational for all hosts associated with this network.,C(display) - I(true) if the network should marked as display network.,C(migration) - I(true) if the network should marked as migration network.,C(gluster) - I(true) if the network should marked as gluster network.
        attribute :clusters

        # @return [Object, nil] Name of the label to assign to the network.
        attribute :label
      end
    end
  end
end

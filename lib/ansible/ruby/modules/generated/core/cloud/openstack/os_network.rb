# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove network from OpenStack.
      class Os_network < Base
        # @return [String] Name to be assigned to the network.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Whether this network is shared or not.
        attribute :shared
        validates :shared, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether the state should be marked as up or down.
        attribute :admin_state_up
        validates :admin_state_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether this network is externally accessible.
        attribute :external
        validates :external, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The physical network where this network object is implemented.
        attribute :provider_physical_network

        # @return [:flat, :vlan, :vxlan, :gre, nil] The type of physical network that maps to this network resource.
        attribute :provider_network_type
        validates :provider_network_type, inclusion: {:in=>[:flat, :vlan, :vxlan, :gre], :message=>"%{value} needs to be :flat, :vlan, :vxlan, :gre"}, allow_nil: true

        # @return [Object, nil] An isolated segment on the physical network. The I(network_type) attribute defines the segmentation model. For example, if the I(network_type) value is vlan, this ID is a vlan identifier. If the I(network_type) value is gre, this ID is a gre key.
        attribute :provider_segmentation_id

        # @return [Object, nil] Project name or ID containing the network (name admin-only)
        attribute :project
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove network from OpenStack.
      class Quantum_network < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] Password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, type: String

        # @return [String, nil] The name of the tenant for whom the network is created
        attribute :tenant_name
        validates :tenant_name, type: String

        # @return [String, nil] The keystone url for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name to be assigned to the network
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The type of the network to be created, gre, vlan, local. Available types depend on the plugin. The Quantum service decides if not specified.
        attribute :provider_network_type
        validates :provider_network_type, type: String

        # @return [Object, nil] The physical network which would realize the virtual network for flat and vlan networks.
        attribute :provider_physical_network

        # @return [String, nil] The id that has to be assigned to the network, in case of vlan networks that would be vlan id and for gre the tunnel id
        attribute :provider_segmentation_id
        validates :provider_segmentation_id, type: String

        # @return [Boolean, nil] If 'yes', specifies that the virtual network is a external network (public).
        attribute :router_external
        validates :router_external, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether this network is shared or not
        attribute :shared
        validates :shared, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether the state should be marked as up or down
        attribute :admin_state_up
        validates :admin_state_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

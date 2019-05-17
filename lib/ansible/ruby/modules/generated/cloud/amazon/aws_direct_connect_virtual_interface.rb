# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, or modify a Direct Connect public or private virtual interface.
      class Aws_direct_connect_virtual_interface < Base
        # @return [:present, :absent, nil] The desired state of the Direct Connect virtual interface.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The ID of the link aggrecation group or connection to associate with the virtual interface.
        attribute :id_to_associate

        # @return [Symbol, nil] The type of virtual interface.
        attribute :public
        validates :public, type: Symbol

        # @return [String, nil] The name of the virtual interface.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] The VLAN ID.
        attribute :vlan
        validates :vlan, type: Integer

        # @return [Integer, nil] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
        attribute :bgp_asn
        validates :bgp_asn, type: Integer

        # @return [Object, nil] The authentication key for BGP configuration.
        attribute :authentication_key

        # @return [Object, nil] The amazon address CIDR with which to create the virtual interface.
        attribute :amazon_address

        # @return [Object, nil] The customer address CIDR with which to create the virtual interface.
        attribute :customer_address

        # @return [Object, nil] The type of IP address for the BGP peer.
        attribute :address_type

        # @return [Object, nil] A list of route filter prefix CIDRs with which to create the public virtual interface.
        attribute :cidr

        # @return [Object, nil] The virtual gateway ID required for creating a private virtual interface.
        attribute :virtual_gateway_id

        # @return [String, nil] The virtual interface ID.
        attribute :virtual_interface_id
        validates :virtual_interface_id, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, modify VLAN
      class Na_elementsw_vlan < Base
        # @return [:present, :absent, nil] Whether the specified vlan should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer] Virtual Network Tag
        attribute :vlan_tag
        validates :vlan_tag, presence: true, type: Integer

        # @return [String, nil] User defined name for the new VLAN,Name of the vlan is unique,Required for create
        attribute :name
        validates :name, type: String

        # @return [String, nil] Storage virtual IP which is unique,Required for create
        attribute :svip
        validates :svip, type: String

        # @return [Array<Hash>, Hash, nil] List of address blocks for the VLAN,Each address block contains the starting IP address and size for the block,Required for create
        attribute :address_blocks
        validates :address_blocks, type: TypeGeneric.new(Hash)

        # @return [String, nil] Netmask for the VLAN,Required for create
        attribute :netmask
        validates :netmask, type: String

        # @return [Object, nil] Gateway for the VLAN
        attribute :gateway

        # @return [Object, nil] Enable or disable namespaces
        attribute :namespace

        # @return [Object, nil] Dictionary of attributes with name and value for each attribute
        attribute :attributes
      end
    end
  end
end

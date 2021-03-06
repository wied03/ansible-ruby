# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete a Public IP address. Allows setting and updating the address allocation method and domain name label. Use the azure_rm_networkinterface module to associate a Public IP with a network interface.
      class Azure_rm_publicipaddress < Base
        # @return [String] Name of resource group with which the Public IP is associated.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [:Dynamic, :Static, nil] Control whether the assigned Public IP remains permanently assigned to the object. If not set to 'Static', the IP address my changed anytime an associated virtual machine is power cycled.
        attribute :allocation_method
        validates :allocation_method, expression_inclusion: {:in=>[:Dynamic, :Static], :message=>"%{value} needs to be :Dynamic, :Static"}, allow_nil: true

        # @return [String, nil] The customizable portion of the FQDN assigned to public IP address. This is an explicit setting. If no value is provided, any existing value will be removed on an existing public IP.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [String] Name of the Public IP.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the Public IP. Use 'present' to create or update a and 'absent' to delete.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [:Basic, :Standard, nil] The public IP address SKU.
        attribute :sku
        validates :sku, expression_inclusion: {:in=>[:Basic, :Standard], :message=>"%{value} needs to be :Basic, :Standard"}, allow_nil: true
      end
    end
  end
end

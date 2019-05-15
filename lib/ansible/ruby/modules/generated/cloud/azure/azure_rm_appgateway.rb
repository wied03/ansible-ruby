# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of Application Gateway.
      class Azure_rm_appgateway < Base
        # @return [String] The name of the resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the application gateway.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Resource location. If not set, location from the resource group will be used as default.
        attribute :location

        # @return [Hash, nil] SKU of the application gateway resource.
        attribute :sku
        validates :sku, type: Hash

        # @return [Object, nil] SSL policy of the application gateway resource.
        attribute :ssl_policy

        # @return [Array<Hash>, Hash, nil] List of subnets used by the application gateway.
        attribute :gateway_ip_configurations
        validates :gateway_ip_configurations, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Authentication certificates of the application gateway resource.
        attribute :authentication_certificates

        # @return [Object, nil] SSL certificates of the application gateway resource.
        attribute :ssl_certificates

        # @return [Array<Hash>, Hash, nil] Frontend IP addresses of the application gateway resource.
        attribute :frontend_ip_configurations
        validates :frontend_ip_configurations, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of frontend ports of the application gateway resource.
        attribute :frontend_ports
        validates :frontend_ports, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of backend address pool of the application gateway resource.
        attribute :backend_address_pools
        validates :backend_address_pools, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Backend http settings of the application gateway resource.
        attribute :backend_http_settings_collection
        validates :backend_http_settings_collection, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of HTTP listeners of the application gateway resource.
        attribute :http_listeners
        validates :http_listeners, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of request routing rules of the application gateway resource.
        attribute :request_routing_rules
        validates :request_routing_rules, type: TypeGeneric.new(Hash)

        # @return [:absent, :present, nil] Assert the state of the Public IP. Use 'present' to create or update a and 'absent' to delete.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

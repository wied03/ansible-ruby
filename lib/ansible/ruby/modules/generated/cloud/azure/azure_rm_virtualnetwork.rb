# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a virtual networks. Allows setting and updating the available IPv4 address ranges and setting custom DNS servers. Use the azure_rm_subnet module to associate subnets with a virtual network.
      class Azure_rm_virtualnetwork < Base
        # @return [String] name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [Array<String>, String, nil] List of IPv4 address ranges where each is formatted using CIDR notation. Required when creating a new virtual network or using purge_address_prefixes.
        attribute :address_prefixes_cidr
        validates :address_prefixes_cidr, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Custom list of DNS servers. Maximum length of two. The first server in the list will be treated as the Primary server. This is an explicit list. Existing DNS servers will be replaced with the specified list. Use the purge_dns_servers option to remove all custom DNS servers and revert to default Azure servers.
        attribute :dns_servers
        validates :dns_servers, type: TypeGeneric.new(String)

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [String] name of the virtual network.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:yes, :no, nil] Use with state present to remove any existing address_prefixes.
        attribute :purge_address_prefixes
        validates :purge_address_prefixes, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use with state present to remove existing DNS servers, reverting to default Azure servers. Mutually exclusive with dns_servers.
        attribute :purge_dns_servers
        validates :purge_dns_servers, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, nil] Assert the state of the virtual network. Use 'present' to create or update and 'absent' to delete.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end

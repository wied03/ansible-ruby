# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Infinity IPAM using REST API
      class Infinity < Base
        # @return [Object] Infinity server_ip with IP address
        attribute :server_ip
        validates :server_ip, presence: true

        # @return [Object] Username to access Infinity,The user must have Rest API privileges
        attribute :username
        validates :username, presence: true

        # @return [Object] Infinity password
        attribute :password
        validates :password, presence: true

        # @return [:reserve_next_available_ip, :release_ip, :delete_network, :add_network, :reserve_network, :release_network, :get_network_id] Action to perform
        attribute :action
        validates :action, presence: true, expression_inclusion: {:in=>[:reserve_next_available_ip, :release_ip, :delete_network, :add_network, :reserve_network, :release_network, :get_network_id], :message=>"%{value} needs to be :reserve_next_available_ip, :release_ip, :delete_network, :add_network, :reserve_network, :release_network, :get_network_id"}

        # @return [String, nil] Network ID
        attribute :network_id
        validates :network_id, type: String

        # @return [String, nil] IP Address for a reservation or a release
        attribute :ip_address
        validates :ip_address, type: String

        # @return [String, nil] Network address with CIDR format (e.g., 192.168.310.0)
        attribute :network_address
        validates :network_address, type: String

        # @return [String, nil] Network bitmask (e.g. 255.255.255.220) or CIDR format (e.g., /26)
        attribute :network_size
        validates :network_size, type: String

        # @return [String, nil] The name of a network
        attribute :network_name
        validates :network_name, type: String

        # @return [Integer, nil] the parent network id for a given network
        attribute :network_location
        validates :network_location, type: Integer

        # @return [:lan, :shared_lan, :supernet, nil] Network type defined by Infinity
        attribute :network_type
        validates :network_type, expression_inclusion: {:in=>[:lan, :shared_lan, :supernet], :message=>"%{value} needs to be :lan, :shared_lan, :supernet"}, allow_nil: true

        # @return [4, 6, :dual, nil] Network family defined by Infinity, e.g. IPv4, IPv6 and Dual stack
        attribute :network_family
        validates :network_family, expression_inclusion: {:in=>[4, 6, :dual], :message=>"%{value} needs to be 4, 6, :dual"}, allow_nil: true
      end
    end
  end
end

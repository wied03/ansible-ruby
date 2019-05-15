# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove, reconfigure, update a private network. This module has a dependency on 1and1 >= 1.0
      class Oneandone_private_network < Base
        # @return [:present, :absent, :update, nil] Define a network's state to create, remove, or update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [String] The identifier (id or name) of the network used with update state.
        attribute :private_network
        validates :private_network, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [String] Private network name used with present state. Used as identifier (id or name) when used with absent state.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Set a description for the network.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The identifier of the datacenter where the private network will be created
        attribute :datacenter
        validates :datacenter, type: String

        # @return [String, nil] Set a private network space, i.e. 192.168.1.0
        attribute :network_address
        validates :network_address, type: String

        # @return [String, nil] Set the netmask for the private network, i.e. 255.255.255.0
        attribute :subnet_mask
        validates :subnet_mask, type: String

        # @return [Array<String>, String, nil] List of server identifiers (name or id) to be added to the private network.
        attribute :add_members
        validates :add_members, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of server identifiers (name or id) to be removed from the private network.
        attribute :remove_members
        validates :remove_members, type: TypeGeneric.new(String)

        # @return [String, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] Defines the number of seconds to wait when using the _wait_for methods
        attribute :wait_interval
        validates :wait_interval, type: Integer
      end
    end
  end
end

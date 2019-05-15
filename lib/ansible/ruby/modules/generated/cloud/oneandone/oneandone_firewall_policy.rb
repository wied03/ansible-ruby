# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove, reconfigure, update firewall policies. This module has a dependency on 1and1 >= 1.0
      class Oneandone_firewall_policy < Base
        # @return [:present, :absent, :update, nil] Define a firewall policy state to create, remove, or update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [String] Firewall policy name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The identifier (id or name) of the firewall policy used with update state.
        attribute :firewall_policy
        validates :firewall_policy, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] A list of rules that will be set for the firewall policy. Each rule must contain protocol parameter, in addition to three optional parameters (port_from, port_to, and source)
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] A list of server identifiers (id or name) to be assigned to a firewall policy. Used in combination with update state.
        attribute :add_server_ips
        validates :add_server_ips, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of server IP ids to be unassigned from a firewall policy. Used in combination with update state.
        attribute :remove_server_ips
        validates :remove_server_ips, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] A list of rules that will be added to an existing firewall policy. It is syntax is the same as the one used for rules parameter. Used in combination with update state.
        attribute :add_rules
        validates :add_rules, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] A list of rule ids that will be removed from an existing firewall policy. Used in combination with update state.
        attribute :remove_rules
        validates :remove_rules, type: TypeGeneric.new(String)

        # @return [String, nil] Firewall policy description. maxLength=256
        attribute :description
        validates :description, type: String

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

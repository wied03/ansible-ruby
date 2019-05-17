# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove, update load balancers. This module has a dependency on 1and1 >= 1.0
      class Oneandone_load_balancer < Base
        # @return [:present, :absent, :update, nil] Define a load balancer state to create, remove, or update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [String] The identifier (id or name) of the load balancer used with update state.
        attribute :load_balancer
        validates :load_balancer, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [String] Load balancer name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128
        attribute :name
        validates :name, presence: true, type: String

        # @return [:NONE, :TCP, :HTTP, :ICMP] Type of the health check. At the moment, HTTP is not allowed.
        attribute :health_check_test
        validates :health_check_test, presence: true, inclusion: {:in=>[:NONE, :TCP, :HTTP, :ICMP], :message=>"%{value} needs to be :NONE, :TCP, :HTTP, :ICMP"}

        # @return [Integer] Health check period in seconds. minimum=5, maximum=300, multipleOf=1
        attribute :health_check_interval
        validates :health_check_interval, presence: true, type: Integer

        # @return [Object, nil] Url to call for cheking. Required for HTTP health check. maxLength=1000
        attribute :health_check_path

        # @return [Object, nil] Regular expression to check. Required for HTTP health check. maxLength=64
        attribute :health_check_parse

        # @return [Boolean] Persistence.
        attribute :persistence
        validates :persistence, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [Integer] Persistence time in seconds. Required if persistence is enabled. minimum=30, maximum=1200, multipleOf=1
        attribute :persistence_time
        validates :persistence_time, presence: true, type: Integer

        # @return [:ROUND_ROBIN, :LEAST_CONNECTIONS] Balancing procedure.
        attribute :method
        validates :method, presence: true, inclusion: {:in=>[:ROUND_ROBIN, :LEAST_CONNECTIONS], :message=>"%{value} needs to be :ROUND_ROBIN, :LEAST_CONNECTIONS"}

        # @return [:US, :ES, :DE, :GB, nil] ID or country code of the datacenter where the load balancer will be created.
        attribute :datacenter
        validates :datacenter, inclusion: {:in=>[:US, :ES, :DE, :GB], :message=>"%{value} needs to be :US, :ES, :DE, :GB"}, allow_nil: true

        # @return [Array<Hash>, Hash] A list of rule objects that will be set for the load balancer. Each rule must contain protocol, port_balancer, and port_server parameters, in addition to source parameter, which is optional.
        attribute :rules
        validates :rules, presence: true, type: TypeGeneric.new(Hash)

        # @return [String, nil] Description of the load balancer. maxLength=256
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] A list of server identifiers (id or name) to be assigned to a load balancer. Used in combination with update state.
        attribute :add_server_ips
        validates :add_server_ips, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of server IP ids to be unassigned from a load balancer. Used in combination with update state.
        attribute :remove_server_ips
        validates :remove_server_ips, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] A list of rules that will be added to an existing load balancer. It is syntax is the same as the one used for rules parameter. Used in combination with update state.
        attribute :add_rules
        validates :add_rules, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] A list of rule ids that will be removed from an existing load balancer. Used in combination with update state.
        attribute :remove_rules
        validates :remove_rules, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

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

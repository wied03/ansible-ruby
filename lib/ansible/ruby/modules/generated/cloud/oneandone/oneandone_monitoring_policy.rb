# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove, update monitoring policies (and add/remove ports, processes, and servers). This module has a dependency on 1and1 >= 1.0
      class Oneandone_monitoring_policy < Base
        # @return [:present, :absent, :update, nil] Define a monitoring policy's state to create, remove, update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [String] Monitoring policy name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The identifier (id or name) of the monitoring policy used with update state.
        attribute :monitoring_policy
        validates :monitoring_policy, presence: true, type: String

        # @return [Boolean] Set true for using agent.
        attribute :agent
        validates :agent, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [String] User's email. maxLength=128
        attribute :email
        validates :email, presence: true, type: String

        # @return [String, nil] Monitoring policy description. maxLength=256
        attribute :description
        validates :description, type: String

        # @return [Array<Hash>, Hash] Monitoring policy thresholds. Each of the suboptions have warning and critical, which both have alert and value suboptions. Warning is used to set limits for warning alerts, critical is used to set critical alerts. alert enables alert, and value is used to advise when the value is exceeded.
        attribute :thresholds
        validates :thresholds, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash] Array of ports that will be monitoring.
        attribute :ports
        validates :ports, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash] Array of processes that will be monitoring.
        attribute :processes
        validates :processes, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Ports to add to the monitoring policy.
        attribute :add_ports
        validates :add_ports, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Processes to add to the monitoring policy.
        attribute :add_processes
        validates :add_processes, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] Servers to add to the monitoring policy.
        attribute :add_servers
        validates :add_servers, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Ports to remove from the monitoring policy.
        attribute :remove_ports
        validates :remove_ports, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Processes to remove from the monitoring policy.
        attribute :remove_processes
        validates :remove_processes, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Servers to remove from the monitoring policy.
        attribute :remove_servers
        validates :remove_servers, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] Ports to be updated on the monitoring policy.
        attribute :update_ports
        validates :update_ports, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Processes to be updated on the monitoring policy.
        attribute :update_processes
        validates :update_processes, type: TypeGeneric.new(Hash)

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

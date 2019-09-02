# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure HealthMonitor object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_healthmonitor < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Healthmonitordns settings for healthmonitor.
        attribute :dns_monitor

        # @return [Object, nil] Healthmonitorexternal settings for healthmonitor.
        attribute :external_monitor

        # @return [Integer, nil] Number of continuous failed health checks before the server is marked down.,Allowed values are 1-50.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :failed_checks
        validates :failed_checks, type: Integer

        # @return [Object, nil] Healthmonitorhttp settings for healthmonitor.
        attribute :http_monitor

        # @return [Hash, nil] Healthmonitorhttp settings for healthmonitor.
        attribute :https_monitor
        validates :https_monitor, type: Hash

        # @return [Symbol, nil] This field describes the object's replication scope.,If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.,If the field is set to true, then the object is replicated across the federation.,Field introduced in 17.1.3.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :is_federated
        validates :is_federated, type: Symbol

        # @return [Object, nil] Use this port instead of the port defined for the server in the pool.,If the monitor succeeds to this port, the load balanced traffic will still be sent to the port of the server defined within the pool.,Allowed values are 1-65535.,Special values are 0 - 'use server port'.
        attribute :monitor_port

        # @return [String] A user friendly name for this health monitor.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] A valid response from the server is expected within the receive timeout window.,This timeout must be less than the send interval.,If server status is regularly flapping up and down, consider increasing this value.,Allowed values are 1-2400.,Default value when not specified in API or module is interpreted by Avi Controller as 4.,Units(SEC).
        attribute :receive_timeout
        validates :receive_timeout, type: Integer

        # @return [Integer, nil] Frequency, in seconds, that monitors are sent to a server.,Allowed values are 1-3600.,Default value when not specified in API or module is interpreted by Avi Controller as 10.,Units(SEC).
        attribute :send_interval
        validates :send_interval, type: Integer

        # @return [Integer, nil] Number of continuous successful health checks before server is marked up.,Allowed values are 1-50.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :successful_checks
        validates :successful_checks, type: Integer

        # @return [Object, nil] Healthmonitortcp settings for healthmonitor.
        attribute :tcp_monitor

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [String] Type of the health monitor.,Enum options - HEALTH_MONITOR_PING, HEALTH_MONITOR_TCP, HEALTH_MONITOR_HTTP, HEALTH_MONITOR_HTTPS, HEALTH_MONITOR_EXTERNAL, HEALTH_MONITOR_UDP,,HEALTH_MONITOR_DNS, HEALTH_MONITOR_GSLB.
        attribute :type
        validates :type, presence: true, type: String

        # @return [Object, nil] Healthmonitorudp settings for healthmonitor.
        attribute :udp_monitor

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the health monitor.
        attribute :uuid
      end
    end
  end
end

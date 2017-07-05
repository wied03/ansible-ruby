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
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Healthmonitordns settings for healthmonitor.
        attribute :dns_monitor

        # @return [Object, nil] Healthmonitorexternal settings for healthmonitor.
        attribute :external_monitor

        # @return [Integer, nil] Number of continuous failed health checks before the server is marked down.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :failed_checks
        validates :failed_checks, type: Integer

        # @return [Object, nil] Healthmonitorhttp settings for healthmonitor.
        attribute :http_monitor

        # @return [Hash, nil] Healthmonitorhttp settings for healthmonitor.
        attribute :https_monitor
        validates :https_monitor, type: Hash

        # @return [Object, nil] Use this port instead of the port defined for the server in the pool.,If the monitor succeeds to this port, the load balanced traffic will still be sent to the port of the server defined within the pool.
        attribute :monitor_port

        # @return [String] A user friendly name for this health monitor.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] A valid response from the server is expected within the receive timeout window.,This timeout must be less than the send interval.,If server status is regularly flapping up and down, consider increasing this value.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :receive_timeout
        validates :receive_timeout, type: Integer

        # @return [Integer, nil] Frequency, in seconds, that monitors are sent to a server.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :send_interval
        validates :send_interval, type: Integer

        # @return [Integer, nil] Number of continuous successful health checks before server is marked up.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :successful_checks
        validates :successful_checks, type: Integer

        # @return [Object, nil] Healthmonitortcp settings for healthmonitor.
        attribute :tcp_monitor

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [String] Type of the health monitor.
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

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure GslbHealthMonitor object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_gslbhealthmonitor < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Healthmonitordns settings for gslbhealthmonitor.
        attribute :dns_monitor

        # @return [Object, nil] Healthmonitorexternal settings for gslbhealthmonitor.
        attribute :external_monitor

        # @return [Object, nil] Number of continuous failed health checks before the server is marked down.,Allowed values are 1-50.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :failed_checks

        # @return [Object, nil] Healthmonitorhttp settings for gslbhealthmonitor.
        attribute :http_monitor

        # @return [Object, nil] Healthmonitorhttp settings for gslbhealthmonitor.
        attribute :https_monitor

        # @return [Object, nil] Use this port instead of the port defined for the server in the pool.,If the monitor succeeds to this port, the load balanced traffic will still be sent to the port of the server defined within the pool.,Allowed values are 1-65535.,Special values are 0 - 'use server port'.
        attribute :monitor_port

        # @return [String] A user friendly name for this health monitor.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A valid response from the server is expected within the receive timeout window.,This timeout must be less than the send interval.,If server status is regularly flapping up and down, consider increasing this value.,Allowed values are 1-300.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :receive_timeout

        # @return [Object, nil] Frequency, in seconds, that monitors are sent to a server.,Allowed values are 1-3600.,Default value when not specified in API or module is interpreted by Avi Controller as 5.
        attribute :send_interval

        # @return [Object, nil] Number of continuous successful health checks before server is marked up.,Allowed values are 1-50.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :successful_checks

        # @return [Object, nil] Healthmonitortcp settings for gslbhealthmonitor.
        attribute :tcp_monitor

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object] Type of the health monitor.,Enum options - HEALTH_MONITOR_PING, HEALTH_MONITOR_TCP, HEALTH_MONITOR_HTTP, HEALTH_MONITOR_HTTPS, HEALTH_MONITOR_EXTERNAL, HEALTH_MONITOR_UDP,,HEALTH_MONITOR_DNS, HEALTH_MONITOR_GSLB.
        attribute :type
        validates :type, presence: true

        # @return [Object, nil] Healthmonitorudp settings for gslbhealthmonitor.
        attribute :udp_monitor

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the health monitor.
        attribute :uuid
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage power states of host systems in given vCenter infrastructure.
      # User can set power state to 'power-down-to-standby', 'power-up-from-standby', 'shutdown-host' and 'reboot-host'.
      # State 'reboot-host', 'shutdown-host' and 'power-down-to-standby' are not supported by all the host systems.
      class Vmware_host_powerstate < Base
        # @return [:"power-down-to-standby", :"power-up-from-standby", :"shutdown-host", :"reboot-host", nil] Set the state of the host system.
        attribute :state
        validates :state, inclusion: {:in=>[:"power-down-to-standby", :"power-up-from-standby", :"shutdown-host", :"reboot-host"], :message=>"%{value} needs to be :\"power-down-to-standby\", :\"power-up-from-standby\", :\"shutdown-host\", :\"reboot-host\""}, allow_nil: true

        # @return [String, nil] Name of the host system to work with.,This is required parameter if C(cluster_name) is not specified.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [String, nil] Name of the cluster from which all host systems will be used.,This is required parameter if C(esxi_hostname) is not specified.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [Symbol, nil] This parameter specify if the host should be proceeding with user defined powerstate regardless of whether it is in maintenance mode.,If C(state) set to C(reboot-host) and C(force) as C(true), then host system is rebooted regardless of whether it is in maintenance mode.,If C(state) set to C(shutdown-host) and C(force) as C(true), then host system is shutdown regardless of whether it is in maintenance mode.,If C(state) set to C(power-down-to-standby) and C(force) to C(true), then all powered off VMs will evacuated.,Not applicable if C(state) set to C(power-up-from-standby).
        attribute :force
        validates :force, type: Symbol

        # @return [Integer, nil] This parameter defines timeout for C(state) set to C(power-down-to-standby) or C(power-up-from-standby).,Ignored if C(state) set to C(reboot-host) or C(shutdown-host).,This parameter is defined in seconds.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end

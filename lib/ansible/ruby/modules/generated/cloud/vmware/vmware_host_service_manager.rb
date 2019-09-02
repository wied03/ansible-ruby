# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage (start, stop, restart) services on a given ESXi host.
      # If cluster_name is provided, specified service will be managed on all ESXi host belonging to that cluster.
      # If specific esxi_hostname is provided, then specified service will be managed on given ESXi host only.
      class Vmware_host_service_manager < Base
        # @return [String, nil] Name of the cluster.,Service settings are applied to every ESXi host system/s in given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,Service settings are applied to this ESXi host system.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [:absent, :present, :restart, :start, :stop, nil] Desired state of service.,State value 'start' and 'present' has same effect.,State value 'stop' and 'absent' has same effect.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :restart, :start, :stop], :message=>"%{value} needs to be :absent, :present, :restart, :start, :stop"}, allow_nil: true

        # @return [:automatic, :off, :on, nil] Set of valid service policy strings.,If set C(on), then service should be started when the host starts up.,If set C(automatic), then service should run if and only if it has open firewall ports.,If set C(off), then Service should not be started when the host starts up.
        attribute :service_policy
        validates :service_policy, expression_inclusion: {:in=>[:automatic, :off, :on], :message=>"%{value} needs to be :automatic, :off, :on"}, allow_nil: true

        # @return [String] Name of Service to be managed. This is brief identifier for the service, for example, ntpd, vxsyslogd etc.,This value should be a valid ESXi service name.
        attribute :service_name
        validates :service_name, presence: true, type: String
      end
    end
  end
end

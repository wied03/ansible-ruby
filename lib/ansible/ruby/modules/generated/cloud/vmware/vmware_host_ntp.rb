# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage NTP configuration information about an ESXi host.
      # User can specify an ESXi hostname or Cluster name. In case of cluster name, all ESXi hosts are updated.
      class Vmware_host_ntp < Base
        # @return [String, nil] Name of the cluster.,NTP settings are applied to every ESXi host system in the given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,NTP settings are applied to this ESXi host system.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [Array<String>, String] IP or FQDN of NTP server/s.,This accepts a list of NTP servers. For multiple servers, please look at the examples.
        attribute :ntp_servers
        validates :ntp_servers, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] present: Add NTP server/s, if it specified server/s are absent else do nothing.,absent: Remove NTP server/s, if specified server/s are present else do nothing.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

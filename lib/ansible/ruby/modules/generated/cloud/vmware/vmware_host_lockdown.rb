# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage administrator permission for the local administrative account for the host when ESXi hostname is given.
      # All parameters and VMware objects values are case sensitive.
      # This module is destructive as administrator permission are managed using APIs used, please read options carefully and proceed.
      # Please specify C(hostname) as vCenter IP or hostname only, as lockdown operations are not possible from standalone ESXi server.
      class Vmware_host_lockdown < Base
        # @return [String, nil] Name of cluster.,All host systems from given cluster used to manage lockdown.,Required parameter, if C(esxi_hostname) is not set.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [Array<String>, String, nil] List of ESXi hostname to manage lockdown.,Required parameter, if C(cluster_name) is not set.,See examples for specifications.
        attribute :esxi_hostname
        validates :esxi_hostname, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State of hosts system,If set to C(present), all host systems will be set in lockdown mode.,If host system is already in lockdown mode and set to C(present), no action will be taken.,If set to C(absent), all host systems will be removed from lockdown mode.,If host system is already out of lockdown mode and set to C(absent), no action will be taken.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end

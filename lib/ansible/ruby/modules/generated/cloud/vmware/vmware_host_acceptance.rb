# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage acceptance level of an ESXi host.
      class Vmware_host_acceptance < Base
        # @return [String, nil] Name of the cluster.,Acceptance level of all ESXi host system in the given cluster will be managed.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,Acceptance level of this ESXi host system will be managed.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [:list, :present, nil] Set or list acceptance level of the given ESXi host.,If set to C(list), then will return current acceptance level of given host system/s.,If set to C(present), then will set given acceptance level.
        attribute :state
        validates :state, inclusion: {:in=>[:list, :present], :message=>"%{value} needs to be :list, :present"}, allow_nil: true

        # @return [:community, :partner, :vmware_accepted, :vmware_certified, nil] Name of acceptance level.,If set to C(partner), then accept only partner and VMware signed and certified VIBs.,If set to C(vmware_certified), then accept only VIBs that are signed and certified by VMware.,If set to C(vmware_accepted), then accept VIBs that have been accepted by VMware.,If set to C(community), then accept all VIBs, even those that are not signed.
        attribute :acceptance_level
        validates :acceptance_level, inclusion: {:in=>[:community, :partner, :vmware_accepted, :vmware_certified], :message=>"%{value} needs to be :community, :partner, :vmware_accepted, :vmware_certified"}, allow_nil: true
      end
    end
  end
end

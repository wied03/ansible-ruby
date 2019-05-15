# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about vmnics available on the given ESXi host.
      # If C(cluster_name) is provided, then vmnic facts about all hosts from given cluster will be returned.
      # If C(esxi_hostname) is provided, then vmnic facts about given host system will be returned.
      # Additional details about vswitch and dvswitch with respective vmnic is also provided which is added in 2.7 version.
      class Vmware_host_vmnic_facts < Base
        # @return [String, nil] Name of the cluster.,Vmnic facts about each ESXi server will be returned for the given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,Vmnic facts about this ESXi server will be returned.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

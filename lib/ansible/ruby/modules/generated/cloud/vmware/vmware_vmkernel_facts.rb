# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather VMKernel facts about an ESXi host from given ESXi hostname or cluster name.
      class Vmware_vmkernel_facts < Base
        # @return [String, nil] Name of the cluster.,VMKernel facts about each ESXi server will be returned for the given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,VMKernel facts about this ESXi server will be returned.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

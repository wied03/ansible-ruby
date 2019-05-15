# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about an ESXi host's capability information when ESXi hostname or Cluster name is given.
      class Vmware_host_capability_facts < Base
        # @return [String, nil] Name of the cluster from all host systems to be used for facts gathering.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname to gather facts from.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

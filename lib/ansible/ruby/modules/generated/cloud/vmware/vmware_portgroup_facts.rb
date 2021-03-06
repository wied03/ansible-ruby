# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about an ESXi host's portgroup configuration when ESXi hostname or Cluster name is given.
      class Vmware_portgroup_facts < Base
        # @return [String, nil] Name of the cluster.,Facts will be returned for all hostsystem belonging to this cluster name.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname to gather facts from.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

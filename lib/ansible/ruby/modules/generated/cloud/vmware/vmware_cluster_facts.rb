# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about clusters in VMWare infrastructure.
      # All values and VMware object names are case sensitive.
      class Vmware_cluster_facts < Base
        # @return [String, nil] Datacenter to search for cluster/s.,This parameter is required, if C(cluster_name) is not supplied.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [String, nil] Name of the cluster.,If set, facts of this cluster will be returned.,This parameter is required, if C(datacenter) is not supplied.
        attribute :cluster_name
        validates :cluster_name, type: String
      end
    end
  end
end

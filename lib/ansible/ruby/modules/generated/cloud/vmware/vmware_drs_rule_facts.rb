# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DRS VM-VM and VM-HOST rules from the given cluster.
      class Vmware_drs_rule_facts < Base
        # @return [String, nil] Name of the cluster.,DRS facts for the given cluster will be returned.,This is required parameter if C(datacenter) parameter is not provided.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] Name of the datacenter.,DRS facts for all the clusters from the given datacenter will be returned.,This is required parameter if C(cluster_name) parameter is not provided.
        attribute :datacenter
        validates :datacenter, type: String
      end
    end
  end
end

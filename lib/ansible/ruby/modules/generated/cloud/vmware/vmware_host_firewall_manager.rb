# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage firewall configurations about an ESXi host when ESXi hostname or Cluster name is given.
      class Vmware_host_firewall_manager < Base
        # @return [String, nil] Name of the cluster.,Firewall settings are applied to every ESXi host system in given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,Firewall settings are applied to this ESXi host system.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [Object, nil] A list of Rule set which needs to be managed.,Each member of list is rule set name and state to be set the rule.,Both rule name and rule state are required parameters.,Please see examples for more information.
        attribute :rules
      end
    end
  end
end

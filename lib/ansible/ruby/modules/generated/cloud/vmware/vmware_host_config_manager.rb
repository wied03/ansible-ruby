# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage advance configuration information about an ESXi host when ESXi hostname or Cluster name is given.
      class Vmware_host_config_manager < Base
        # @return [String, nil] Name of the cluster.,Settings are applied to every ESXi host system in given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,Settings are applied to this ESXi host system.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String

        # @return [Object, nil] A dictionary of advance configuration parameters.,Invalid options will cause module to error.
        attribute :options
      end
    end
  end
end

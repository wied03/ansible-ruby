# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts of the SSL thumbprint information for a host.
      class Vmware_host_ssl_facts < Base
        # @return [String, nil] Name of the cluster.,SSL thumbprint information about all ESXi host system in the given cluster will be reported.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,SSL thumbprint information of this ESXi host system will be reported.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

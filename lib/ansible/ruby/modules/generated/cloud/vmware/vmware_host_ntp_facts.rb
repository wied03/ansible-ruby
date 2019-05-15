# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about NTP configurations on an ESXi host.
      class Vmware_host_ntp_facts < Base
        # @return [String, nil] Name of the cluster.,NTP config facts about each ESXi server will be returned for the given cluster.,If C(esxi_hostname) is not given, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] ESXi hostname.,NTP config facts about this ESXi server will be returned.,If C(cluster_name) is not given, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

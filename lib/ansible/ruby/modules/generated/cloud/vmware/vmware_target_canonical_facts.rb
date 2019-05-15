# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about canonical (NAA) from an ESXi host based on SCSI target ID.
      class Vmware_target_canonical_facts < Base
        # @return [Integer, nil] The target id based on order of scsi device.,version 2.6 onwards, this parameter is optional.
        attribute :target_id
        validates :target_id, type: Integer

        # @return [String, nil] Name of the cluster.,Facts about all SCSI devices for all host system in the given cluster is returned.,This parameter is required, if C(esxi_hostname) is not provided.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] Name of the ESXi host system.,Facts about all SCSI devices for the given ESXi host system is returned.,This parameter is required, if C(cluster_name) is not provided.
        attribute :esxi_hostname
        validates :esxi_hostname, type: String
      end
    end
  end
end

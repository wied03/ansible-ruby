# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about disks belonging to given virtual machine.
      # All parameters and VMware object names are case sensitive.
      class Vmware_guest_disk_facts < Base
        # @return [String, nil] Name of the virtual machine.,This is required parameter, if parameter C(uuid) is not supplied.
        attribute :name
        validates :name, type: String

        # @return [String, nil] UUID of the instance to gather facts if known, this is VMware's unique identifier.,This is required parameter, if parameter C(name) is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [Object, nil] Destination folder, absolute or relative path to find an existing guest.,This is required parameter, only if multiple VMs are found with same name.,The folder should include the datacenter. ESX's datacenter is ha-datacenter,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2,   folder: vm/folder2,   folder: folder2
        attribute :folder

        # @return [String] The datacenter name to which virtual machine belongs to.
        attribute :datacenter
        validates :datacenter, presence: true, type: String
      end
    end
  end
end

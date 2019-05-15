# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about virtual machine's snapshots.
      class Vmware_guest_snapshot_facts < Base
        # @return [String, nil] Name of the VM to work with.,This is required if C(uuid) is not supplied.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] UUID of the instance to manage if known, this value is VMware's unique identifier.,This is required if C(name) is not supplied.,The C(folder) is ignored, if C(uuid) is provided.
        attribute :uuid

        # @return [Object, nil] Destination folder, absolute or relative path to find an existing guest.,This is required only, if multiple virtual machines with same name are found on given vCenter.,The folder should include the datacenter. ESX's datacenter is ha-datacenter,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2
        attribute :folder

        # @return [String] Name of the datacenter.
        attribute :datacenter
        validates :datacenter, presence: true, type: String
      end
    end
  end
end

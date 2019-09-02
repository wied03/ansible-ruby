# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about a single VM on a VMware ESX cluster
      class Vmware_guest_facts < Base
        # @return [Object, nil] Name of the VM to work with,This is required if UUID is not supplied.
        attribute :name

        # @return [:first, :last, nil] If multiple VMs matching the name, use the first or last found
        attribute :name_match
        validates :name_match, expression_inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required if name is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [String, nil] Destination folder, absolute or relative path to find an existing guest.,This is required if name is supplied.,The folder should include the datacenter. ESX's datacenter is ha-datacenter,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2,   folder: vm/folder2,   folder: folder2
        attribute :folder
        validates :folder, type: String

        # @return [String] Destination datacenter for the deploy operation
        attribute :datacenter
        validates :datacenter, presence: true, type: String
      end
    end
  end
end

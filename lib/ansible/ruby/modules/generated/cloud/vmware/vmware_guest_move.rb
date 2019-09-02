# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to move virtual machines between folders.
      class Vmware_guest_move < Base
        # @return [String, nil] Name of the existing virtual machine to move.,This is required if C(UUID) is not supplied.
        attribute :name
        validates :name, type: String

        # @return [String, nil] UUID of the virtual machine to manage if known, this is VMware's unique identifier.,This is required if C(name) is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [:first, :last, nil] If multiple virtual machines matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, expression_inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String] Absolute path to move an existing guest,The dest_folder should include the datacenter. ESX's datacenter is ha-datacenter.,This parameter is case sensitive.,Examples:,   dest_folder: /ha-datacenter/vm,   dest_folder: ha-datacenter/vm,   dest_folder: /datacenter1/vm,   dest_folder: datacenter1/vm,   dest_folder: /datacenter1/vm/folder1,   dest_folder: datacenter1/vm/folder1,   dest_folder: /folder1/datacenter1/vm,   dest_folder: folder1/datacenter1/vm,   dest_folder: /folder1/datacenter1/vm/folder2
        attribute :dest_folder
        validates :dest_folder, presence: true, type: String

        # @return [String] Destination datacenter for the move operation
        attribute :datacenter
        validates :datacenter, presence: true, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to create, delete and update snapshot(s) of the given virtual machine.
      # All parameters and VMware object names are case sensitive.
      class Vmware_guest_snapshot < Base
        # @return [:present, :absent, :revert, :remove_all] Manage snapshot(s) attached to a specific virtual machine.,If set to C(present) and snapshot absent, then will create a new snapshot with the given name.,If set to C(present) and snapshot present, then no changes are made.,If set to C(absent) and snapshot present, then snapshot with the given name is removed.,If set to C(absent) and snapshot absent, then no changes are made.,If set to C(revert) and snapshot present, then virtual machine state is reverted to the given snapshot.,If set to C(revert) and snapshot absent, then no changes are made.,If set to C(remove_all) and snapshot(s) present, then all snapshot(s) will be removed.,If set to C(remove_all) and snapshot(s) absent, then no changes are made.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :revert, :remove_all], :message=>"%{value} needs to be :present, :absent, :revert, :remove_all"}

        # @return [String, nil] Name of the virtual machine to work with.,This is required parameter, if C(uuid) is not supplied.
        attribute :name
        validates :name, type: String

        # @return [:first, :last, nil] If multiple VMs matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [Object, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required parameter, if C(name) is not supplied.
        attribute :uuid

        # @return [String, nil] Destination folder, absolute or relative path to find an existing guest.,This is required parameter, if C(name) is supplied.,The folder should include the datacenter. ESX's datacenter is ha-datacenter.,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2,   folder: vm/folder2,   folder: folder2
        attribute :folder
        validates :folder, type: String

        # @return [String] Destination datacenter for the deploy operation.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String, nil] Sets the snapshot name to manage.,This param is required only if state is not C(remove_all)
        attribute :snapshot_name
        validates :snapshot_name, type: String

        # @return [String, nil] Define an arbitrary description to attach to snapshot.
        attribute :description
        validates :description, type: String

        # @return [Symbol, nil] If set to C(true) and virtual machine is powered on, it will quiesce the file system in virtual machine.,Note that VMWare Tools are required for this flag.,If virtual machine is powered off or VMware Tools are not available, then this flag is set to C(false).,If virtual machine does not provide capability to take quiesce snapshot, then this flag is set to C(false).
        attribute :quiesce
        validates :quiesce, type: Symbol

        # @return [Symbol, nil] If set to C(true), memory dump of virtual machine is also included in snapshot.,Note that memory snapshots take time and resources, this will take longer time to create.,If virtual machine does not provide capability to take memory snapshot, then this flag is set to C(false).
        attribute :memory_dump
        validates :memory_dump, type: Symbol

        # @return [Symbol, nil] If set to C(true) and state is set to C(absent), then entire snapshot subtree is set for removal.
        attribute :remove_children
        validates :remove_children, type: Symbol

        # @return [String, nil] Value to rename the existing snapshot to.
        attribute :new_snapshot_name
        validates :new_snapshot_name, type: String

        # @return [String, nil] Value to change the description of an existing snapshot to.
        attribute :new_description
        validates :new_description, type: String
      end
    end
  end
end

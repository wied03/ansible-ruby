# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create virtual machines snapshots
      class Vmware_guest_snapshot < Base
        # @return [:present, :absent, :revert, :remove_all] Manage snapshots attached to a specific virtual machine.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :revert, :remove_all], :message=>"%{value} needs to be :present, :absent, :revert, :remove_all"}

        # @return [String] Name of the VM to work with
        attribute :name
        validates :name, presence: true, type: String

        # @return [:first, :last, nil] If multiple VMs matching the name, use the first or last found
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [Object, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required if name is not supplied.
        attribute :uuid

        # @return [Object, nil] Define instance folder location.
        attribute :folder

        # @return [Object] Destination datacenter for the deploy operation
        attribute :datacenter
        validates :datacenter, presence: true

        # @return [String, nil] Sets the snapshot name to manage.,This param is required only if state is not C(remove_all)
        attribute :snapshot_name
        validates :snapshot_name, type: String

        # @return [String, nil] Define an arbitrary description to attach to snapshot.
        attribute :description
        validates :description, type: String
      end
    end
  end
end

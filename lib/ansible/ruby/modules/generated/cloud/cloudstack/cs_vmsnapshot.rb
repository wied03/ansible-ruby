# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove and revert VM from snapshots.
      class Cs_vmsnapshot < Base
        # @return [String] Unique Name of the snapshot. In CloudStack terms display name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the virtual machine.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [Object, nil] Description of the snapshot.
        attribute :description

        # @return [Boolean, nil] Snapshot memory if set to true.
        attribute :snapshot_memory
        validates :snapshot_memory, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Name of the zone in which the VM is in. If not set, default zone is used.
        attribute :zone

        # @return [Object, nil] Name of the project the VM is assigned to.
        attribute :project

        # @return [:present, :absent, :revert, nil] State of the snapshot.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :revert], :message=>"%{value} needs to be :present, :absent, :revert"}, allow_nil: true

        # @return [Object, nil] Domain the VM snapshot is related to.
        attribute :domain

        # @return [Object, nil] Account the VM snapshot is related to.
        attribute :account

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

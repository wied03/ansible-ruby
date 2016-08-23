# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_vmsnapshot < Base
        # @return [String] Unique Name of the snapshot. In CloudStack terms display name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the virtual machine.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [Object] Description of the snapshot.
        attribute :description

        # @return [TrueClass] Snapshot memory if set to true.
        attribute :snapshot_memory
        validates :snapshot_memory, type: TrueClass

        # @return [Object] Name of the zone in which the VM is in. If not set, default zone is used.
        attribute :zone

        # @return [Object] Name of the project the VM is assigned to.
        attribute :project

        # @return [String] State of the snapshot.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :revert], :message=>"%{value} needs to be :present, :absent, :revert"}, allow_nil: true

        # @return [Object] Domain the VM snapshot is related to.
        attribute :domain

        # @return [Object] Account the VM snapshot is related to.
        attribute :account

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage Virtual Machine Snapshots in oVirt/RHV
      class Ovirt_snapshot < Base
        # @return [String, nil] ID of the snapshot to manage.
        attribute :snapshot_id
        validates :snapshot_id, type: String

        # @return [String] Name of the Virtual Machine to manage.
        attribute :vm_name
        validates :vm_name, presence: true, type: String

        # @return [:restore, :present, :absent, nil] Should the Virtual Machine snapshot be restore/present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:restore, :present, :absent], :message=>"%{value} needs to be :restore, :present, :absent"}, allow_nil: true

        # @return [String, nil] Description of the snapshot.
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] If I(true) and C(state) is I(present) save memory of the Virtual Machine if it's running.,If I(true) and C(state) is I(restore) restore memory of the Virtual Machine.,Note that Virtual Machine will be paused while saving the memory.
        attribute :use_memory
        validates :use_memory, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Modify/Delete ONTAP snapshots
      class Na_ontap_snapshot < Base
        # @return [:present, :absent, nil] If you want to create/modify a snapshot, or delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the snapshot to be managed. The maximum string length is 256 characters.
        attribute :snapshot
        validates :snapshot, presence: true, type: String

        # @return [String] Name of the volume on which the snapshot is to be created.
        attribute :volume
        validates :volume, presence: true, type: String

        # @return [Object, nil] If true, the snapshot is to be created asynchronously.
        attribute :async_bool

        # @return [String, nil] A human readable comment attached with the snapshot. The size of the comment can be at most 255 characters.
        attribute :comment
        validates :comment, type: String

        # @return [Object, nil] A human readable SnapMirror Label attached with the snapshot. Size of the label can be at most 31 characters.
        attribute :snapmirror_label

        # @return [Object, nil] if this field is true, snapshot will be deleted even if some other processes are accessing it.
        attribute :ignore_owners

        # @return [Object, nil] The 128 bit unique snapshot identifier expressed in the form of UUID.
        attribute :snapshot_instance_uuid

        # @return [String, nil] The Vserver name
        attribute :vserver
        validates :vserver, type: String
      end
    end
  end
end

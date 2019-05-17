# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Modify or Delete Snapshot on Element OS Cluster.
      class Na_elementsw_snapshot < Base
        # @return [String, nil] Name of new snapshot create.,If unspecified, date and time when the snapshot was taken is used.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, nil] Whether the specified snapshot should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, String] ID or Name of active volume.
        attribute :src_volume_id
        validates :src_volume_id, presence: true, type: MultipleTypes.new(Integer, String)

        # @return [String] Account ID or Name of Parent/Source Volume.
        attribute :account_id
        validates :account_id, presence: true, type: String

        # @return [Object, nil] Retention period for the snapshot.,Format is 'HH:mm:ss'.
        attribute :retention

        # @return [String, nil] ID or Name of an existing snapshot.,Required when C(state=present), to modify snapshot properties.,Required when C(state=present), to create snapshot from another snapshot in the volume.,Required when C(state=absent), to delete snapshot.
        attribute :src_snapshot_id
        validates :src_snapshot_id, type: String

        # @return [Symbol, nil] Flag, whether to replicate the snapshot created to a remote replication cluster.,To enable specify 'true' value.
        attribute :enable_remote_replication
        validates :enable_remote_replication, type: Symbol

        # @return [Object, nil] Label used by SnapMirror software to specify snapshot retention policy on SnapMirror endpoint.
        attribute :snap_mirror_label

        # @return [String, nil] The date and time (format ISO 8601 date string) at which this snapshot will expire.
        attribute :expiration_time
        validates :expiration_time, type: String

        # @return [String, nil] Element OS access account password
        attribute :password
        validates :password, type: String

        # @return [String, nil] Element OS access account user-name
        attribute :username
        validates :username, type: String
      end
    end
  end
end

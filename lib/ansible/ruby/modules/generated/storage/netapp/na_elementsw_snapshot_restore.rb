# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Element OS Cluster restore snapshot to volume.
      class Na_elementsw_snapshot_restore < Base
        # @return [String] ID or Name of source active volume.
        attribute :src_volume_id
        validates :src_volume_id, presence: true, type: String

        # @return [String] ID or Name of an existing snapshot.
        attribute :src_snapshot_id
        validates :src_snapshot_id, presence: true, type: String

        # @return [String] New Name of destination for restoring the snapshot
        attribute :dest_volume_name
        validates :dest_volume_name, presence: true, type: String

        # @return [String] Account ID or Name of Parent/Source Volume.
        attribute :account_id
        validates :account_id, presence: true, type: String
      end
    end
  end
end

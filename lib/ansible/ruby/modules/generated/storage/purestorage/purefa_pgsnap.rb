# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete local protection group snapshots on Pure Storage FlashArray.
      # This module only supports local protection groups.
      class Purefa_pgsnap < Base
        # @return [String] The name of the source protection group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Suffix of snapshot name.
        attribute :suffix
        validates :suffix, type: String

        # @return [:absent, :present, :copy, nil] Define whether the protection group snapshot should exist or not. Copy (added in 2.7) will force an overwrite of an exisitng volume from a snapshot.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :copy], :message=>"%{value} needs to be :absent, :present, :copy"}, allow_nil: true

        # @return [String, nil] Define whether to eradicate the snapshot on delete or leave in trash.
        attribute :eradicate
        validates :eradicate, type: String

        # @return [String, nil] Restore a specific volume from a protection group snapshot. This implies overwrite of the current full volume. USE WITH CARE!!
        attribute :restore
        validates :restore, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete volumes and volume snapshots on Pure Storage FlashArray.
      class Purefa_snap < Base
        # @return [String] The name of the source volume.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Suffix of snapshot name.
        attribute :suffix
        validates :suffix, type: String

        # @return [String, nil] Name of target volume if creating from snapshot.
        attribute :target
        validates :target, type: String

        # @return [:yes, :no, nil] Define whether to overwrite existing volume when creating from snapshot.
        attribute :overwrite
        validates :overwrite, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :copy, :present, nil] Define whether the volume snapshot should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :copy, :present], :message=>"%{value} needs to be :absent, :copy, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Define whether to eradicate the snapshot on delete or leave in trash.
        attribute :eradicate
        validates :eradicate, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

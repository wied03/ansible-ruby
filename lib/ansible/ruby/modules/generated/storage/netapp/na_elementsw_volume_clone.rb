# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create volume clones on Element OS
      class Na_elementsw_volume_clone < Base
        # @return [String] The name of the clone.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] The id of the src volume to clone. id may be a numeric identifier or a volume name.
        attribute :src_volume_id
        validates :src_volume_id, presence: true, type: Integer

        # @return [Integer, nil] The id of the snapshot to clone. id may be a numeric identifier or a snapshot name.
        attribute :src_snapshot_id
        validates :src_snapshot_id, type: Integer

        # @return [Integer] Account ID for the owner of this cloned volume. id may be a numeric identifier or an account name.
        attribute :account_id
        validates :account_id, presence: true, type: Integer

        # @return [Hash, nil] A YAML dictionary of attributes that you would like to apply on this cloned volume.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [Integer, nil] The size of the cloned volume in (size_unit).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [:readOnly, :readWrite, :locked, :replicationTarget, nil] Access allowed for the volume.,If unspecified, the access settings of the clone will be the same as the source.,readOnly - Only read operations are allowed.,readWrite - Reads and writes are allowed.,locked - No reads or writes are allowed.,replicationTarget - Identify a volume as the target volume for a paired set of volumes. If the volume is not paired, the access status is locked.
        attribute :access
        validates :access, expression_inclusion: {:in=>[:readOnly, :readWrite, :locked, :replicationTarget], :message=>"%{value} needs to be :readOnly, :readWrite, :locked, :replicationTarget"}, allow_nil: true
      end
    end
  end
end

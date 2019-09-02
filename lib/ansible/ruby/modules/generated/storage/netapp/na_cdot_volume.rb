# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy volumes on NetApp cDOT
      class Na_cdot_volume < Base
        # @return [:present, :absent] Whether the specified volume should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the volume to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:yes, :no, nil] Set True if the volume is an Infinite Volume.
        attribute :infinite
        validates :infinite, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the specified volume is online, or not.
        attribute :online
        validates :online, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The name of the aggregate the flexvol should exist on. Required when C(state=present).
        attribute :aggregate_name
        validates :aggregate_name, type: String

        # @return [Integer, nil] The size of the volume in (size_unit). Required when C(state=present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [String] Name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String, nil] Junction path where to mount the volume
        attribute :junction_path
        validates :junction_path, type: String

        # @return [String, nil] Export policy to set for the specified junction path.
        attribute :export_policy
        validates :export_policy, type: String

        # @return [String, nil] Snapshot policy to set for the specified volume.
        attribute :snapshot_policy
        validates :snapshot_policy, type: String
      end
    end
  end
end

# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update volumes on SolidFire
      class Sf_volume_manager < Base
        # @return [:present, :absent] Whether the specified volume should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the volume to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Account ID for the owner of this volume.
        attribute :account_id
        validates :account_id, presence: true, type: Integer

        # @return [Object, nil] Should the volume provide 512-byte sector emulation?,Required when C(state=present)
        attribute :"512emulation"

        # @return [Hash, nil] Initial quality of service settings for this volume. Configure as dict in playbooks.
        attribute :qos
        validates :qos, type: Hash

        # @return [Object, nil] A YAML dictionary of attributes that you would like to apply on this volume.
        attribute :attributes

        # @return [Object, nil] The ID of the volume to manage or update.,In order to create multiple volumes with the same name, but different volume_ids, please declare the I(volume_id) parameter with an arbitrary value. However, the specified volume_id will not be assigned to the newly created volume (since it's an auto-generated property).
        attribute :volume_id

        # @return [Integer, nil] The size of the volume in (size_unit).,Required when C(state = present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [:readOnly, :readWrite, :locked, :replicationTarget, nil] Access allowed for the volume.,readOnly: Only read operations are allowed.,readWrite: Reads and writes are allowed.,locked: No reads or writes are allowed.,replicationTarget: Identify a volume as the target volume for a paired set of volumes. If the volume is not paired, the access status is locked.,If unspecified, the access settings of the clone will be the same as the source.
        attribute :access
        validates :access, expression_inclusion: {:in=>[:readOnly, :readWrite, :locked, :replicationTarget], :message=>"%{value} needs to be :readOnly, :readWrite, :locked, :replicationTarget"}, allow_nil: true
      end
    end
  end
end

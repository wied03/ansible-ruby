# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or remove volumes (standard and thin) for NetApp E/EF-series storage arrays.
      class Netapp_e_volume < Base
        # @return [:present, :absent] Whether the specified volume should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the volume to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Required only when requested state is 'present'.  The name of the storage pool the volume should exist on.
        attribute :storage_pool_name
        validates :storage_pool_name, presence: true

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter
        attribute :size_unit
        validates :size_unit, inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Object] Required only when state = 'present'.  The size of the volume in (size_unit).
        attribute :size
        validates :size, presence: true

        # @return [Integer, nil] The segment size of the new volume
        attribute :segment_size_kb
        validates :segment_size_kb, type: Integer

        # @return [:yes, :no, nil] Whether the volume should be thin provisioned.  Thin volumes can only be created on disk pools (raidDiskPool).
        attribute :thin_provision
        validates :thin_provision, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Initial size of the thin volume repository volume (in size_unit)
        attribute :thin_volume_repo_size
        validates :thin_volume_repo_size, presence: true

        # @return [String, nil] Maximum size that the thin volume repository volume will automatically expand to
        attribute :thin_volume_max_repo_size
        validates :thin_volume_max_repo_size, type: String

        # @return [Symbol, nil] Whether an existing SSD cache should be enabled on the volume (fails if no SSD cache defined),The default value is to ignore existing SSD cache setting.
        attribute :ssd_cache_enabled
        validates :ssd_cache_enabled, type: Symbol

        # @return [:yes, :no, nil] If data assurance should be enabled for the volume
        attribute :data_assurance_enabled
        validates :data_assurance_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end

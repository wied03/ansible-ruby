# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, removes or resizes logical volumes.
      class Lvol < Base
        # @return [String] The volume group this logical volume is part of.
        attribute :vg
        validates :vg, presence: true, type: String

        # @return [String] The name of the logical volume.
        attribute :lv
        validates :lv, presence: true, type: String

        # @return [String, nil] The size of the logical volume, according to lvcreate(8) --size, by default in megabytes or optionally with one of [bBsSkKmMgGtTpPeE] units; or according to lvcreate(8) --extents as a percentage of [VG|PVS|FREE]; Float values must begin with a digit. Resizing using percentage values was not supported prior to 2.1.
        attribute :size
        validates :size, type: String

        # @return [:present, :absent, nil] Control if the logical volume exists. If C(present) the C(size) option is required.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Shrink or remove operations of volumes requires this switch. Ensures that that filesystems get never corrupted/destroyed by mistake.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Free-form options to be passed to the lvcreate command
        attribute :opts
        validates :opts, type: String

        # @return [String, nil] The name of the snapshot volume
        attribute :snapshot
        validates :snapshot, type: String
      end
    end
  end
end
